# Estratégia de testes e homologação

## Princípio

Separar quatro gates:

1. **estrutura estática** — sintaxe/registro/files;
2. **carregamento addon** — PBO realmente monta no engine;
3. **runtime single-player/host** — UI e regressão funcional;
4. **multiplayer** — autoridade, replicação, JIP e concorrência.

Um gate posterior não substitui o anterior.

## 0.13-A — automático

Checkpoint novo: gates 655..664, 10 gates. O botão 0.13-A não reexecuta a cadeia inteira de 0.12 porque 516/523 são dívida conhecida aceita.

## 0.13-A — smoke multiplayer esperado

1. Cliente cria/salva kit privado.
2. Cliente publica: ENVIADO -> PUBLICADO.
3. Host e outro cliente veem mesmo snapshot/revision.
4. Republicar mesmo kit pelo mesmo autor atualiza sem duplicar.
5. Editar privado não muda público antes de republicar.
6. SALVAR NO PRIVADO cria novo ItemKit independente.
7. Autor público é derivado pelo servidor.

## Missão R3

Possui até 8 slots BLUFOR, AI desativada, ação direta `SP_ORG - Abrir Organizador [HOME]` e fallback HOME. Isso foi criado para desacoplar acesso à UI de test actions do addon.

## Evidência de falha de Packaging R1

O RPT de 25/09/2026 está em `evidence/RPT_2026-09-25_PBO_load_failure.txt`. Ele deve permanecer preservado para evitar repetir investigação de UI quando o PBO não montou.

## Critério de fechar Packaging R2

- nenhum `Unable to open` dos dois PBOs;
- função Nexus initialize definida;
- função Items openInterface definida;
- HOME abre UI;
- logs de initialize aparecem.

Só depois disso avaliar comportamento multiplayer 0.13-A.
