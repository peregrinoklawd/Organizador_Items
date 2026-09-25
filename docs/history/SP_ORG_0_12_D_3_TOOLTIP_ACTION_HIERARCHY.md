# SP_ORG_Items 0.12-D.3 — Tooltip + Action Hierarchy Recovery

## Problema
Após a migração do DnD para autoridade de ponteiro no display, o arraste ficou robusto, mas o tooltip nativo dos itens deixou de aparecer durante o hover. Como o mesmo ponteiro já era resolvido geometricamente para iniciar o DnD, depender novamente apenas do hover nativo criaria dois sistemas concorrentes.

## Solução
A D.3 cria `fn_updateUIItemTooltip.sqf`, um tooltip estruturado em runtime. No modo `SYNC`, ele chama `fn_resolveUIPointerSource.sqf`, identifica a mesma linha/controle usada pelo DnD e exibe os metadados já publicados pelo renderer. O controle visual é desabilitado, deslocado do cursor e destruído no `HIDE`.

`MouseEnter` / `MouseExit` também são instalados nos ícones e nomes como caminho auxiliar. O `ctrlSetTooltip` existente não foi removido, preservando compatibilidade e contratos históricos.

## Lifecycle
- refresh de tabela: HIDE antes de `ctClear`;
- hover: SHOW/SYNC;
- movimento: reposicionamento pelo ponteiro;
- início de DnD: HIDE antes do runtime ghost;
- unload: HIDE determinístico.

## Hierarquia de ações
Os quatro destinos e as três operações continuam nas mesmas posições. A mudança é semântica:

- `Onde aplicar o kit?` explica QUALQUER/UNIFORME/COLETE/MOCHILA;
- `O que deseja fazer?` explica APLICAR/REMOVER/SUBSTITUIR.

Isso reduz ambiguidade sem adicionar uma terceira fileira de botões ou alterar o fluxo muscular já aprendido pelo jogador.

## Runner
O RPT da D.2 revelou que o arquivo do runner existia, mas a função não estava registrada no `CfgFunctions` da missão. A D.3 registra D.2 e D.3 em `description.ext` e mantém o registro em `config.cpp`.

## Critério de aprovação
A entrega só deve ser homologada se:
- suíte cumulativa fechar `566/566`;
- tooltip funcionar nos três painéis;
- DnD/ghost permanecer igual ou melhor ao aprovado;
- não houver novo erro SP_ORG no RPT;
- bloco de aplicação permanecer legível no ultrawide.
