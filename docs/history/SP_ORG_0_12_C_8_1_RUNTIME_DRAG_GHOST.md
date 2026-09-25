# 0.12-C.8.1 — Runtime Drag Ghost Fix

## Motivo

A 0.12-C.8 preservou o DnD funcional da C.7, porém o proxy visual declarado estaticamente no diálogo não apareceu durante o gesto humano. Os gates da C.8 validavam o helper diretamente, o que não provava que a cadeia real do ponteiro materializava um elemento visível.

## Arquitetura

A C.8.1 mantém `DISPLAY_POINTER`, `resolveUIPointerSource`, `resolveUIPanelDropTarget` e o dispatcher físico/lógico da C.7. A mudança é exclusivamente na representação visual do drag.

O ghost agora é um único `RscStructuredText` criado dinamicamente pelo display com `ctrlCreate` quando o gesto entra em `ACTIVE`. A criação tardia acontece depois das `CT_CONTROLS_TABLE` já materializadas e evita o problema de z-order dos controles estáticos.

O controle fica `ctrlEnable false`. Portanto não é origem, destino nem superfície de hit-test. O cursor continua sendo resolvido por `getMousePosition`.

O conteúdo visual usa o `sourcePicture` e `sourceText` já congelados no snapshot do drag. O `parseText` só é refeito no START ou se a identidade visual da origem mudar; movimentos normais alteram apenas a posição.

## Lifecycle

- START real: `SHOW` cria o controle e posiciona junto ao cursor;
- POINTER_MOVE/MOVE: reposiciona o mesmo controle;
- DROP/CANCEL/UNLOAD: `HIDE` executa `ctrlDelete` e limpa o handle em `uiNamespace`.

Telemetria:

- `[DND_GHOST] CREATE`
- `[DND_GHOST] MOVE_FIRST`
- `[DND_GHOST] HIDE`

## Gates

A C.8 histórica mantém IDs 531–536, modernizados para a implementação runtime. A C.8.1 adiciona:

- 537 — arquitetura runtime/top-layer + telemetria;
- 538 — caminho do handler `POINTER_MOVE` cria o ghost após o limiar;
- 539 — drag ACTIVE reutiliza e atualiza o mesmo ghost;
- 540 — START custom e START nativo estão ligados a SHOW;
- 541 — cancelamento destrói o controle e zera o estado visual;
- 542 — invariância: proxy não chama dispatcher/refresh mutável e não toca loadout/storage.

Alvo cumulativo: **542/542**.
