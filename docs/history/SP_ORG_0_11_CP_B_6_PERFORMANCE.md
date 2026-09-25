# 0.11 CP-B.6 — Diagnóstico e correção de performance

## Sintoma confirmado antes da CP-B.5
Movimentações lógicas de item causavam micro-stutter. A CP-B.5 confirmou que o principal custo era o `refreshInterface` completo depois de operações que alteravam somente o Draft. O usuário confirmou manualmente que o engasgo desapareceu após a introdução de `DRAFT_FOCUSED`.

## Novo sintoma observado
Mesmo após a CP-B.5, havia micro-stutter ao:

- trocar a visualização do Equipment entre U/C/M;
- clicar U quando U já estava selecionado;
- trocar filtros do Catálogo.

## Causa no código
`fn_handleUIEvent.sqf` ainda deixava `EQUIPMENT_VIEW`, `CATALOG_CATEGORY`, `CATALOG_PAGE`, `CATALOG_SEARCH` e `EQUIPMENT_SEARCH` caírem no `_refresh=true` padrão.

Isso chamava `fn_refreshInterface.sqf`, que construía o view-model completo e, entre outras coisas:

- listava Repository/Kits;
- reconstruía o Draft;
- executava filtro do Catálogo;
- via `filterCatalog -> getCatalog`, fazia cópia defensiva de todos os itens do cache;
- reconstruía a janela de até 120 linhas do catálogo;
- recapturava o container Equipment;
- recalculava readiness e footer.

Em modset grande, o catálogo observado chegou a cerca de 7.140 itens elegíveis. Esse trabalho síncrono no frame do clique era desnecessário para uma troca de VIEW ou categoria.

## Correção
### EQUIPMENT_FOCUSED
Nova função `refreshEquipmentViewUI`:

- U→U: não chama `capturePlayerContainer`, não limpa lista, não toca Catálogo/Draft/Repository;
- U→C/M: captura somente o novo container visualizado e redesenha somente o painel Equipment;
- mantém applicationTarget independente;
- registra `captureMs`, `renderMs` e `totalMs`.

### CATALOG_FOCUSED
Novas funções `getUICatalogWindow` e `refreshCatalogWindowUI`:

- acessam diretamente o cache runtime CONFIG_ALL já construído;
- constroem uma projeção UI-only por categoria uma vez por cache/build;
- filtros de categoria usam somente os índices da categoria;
- defensive copy é feita somente para a janela visível;
- não chamam `getCatalog`/`filterCatalog` no caminho focal;
- não recapturam Equipment;
- não listam Repository nem Draft;
- registram projectionBuildMs/filterMs/renderMs/totalMs.

## O que não foi alterado
- Nexus;
- Application Engine;
- Draft Domain;
- semântica Whole-Kit;
- DnD;
- transações físicas;
- áudio de movimento.

## Próximo diagnóstico se ainda houver stutter
Se VIEW ou filtros ainda apresentarem hitch, usar os campos UI_PERF:

- EQUIPMENT_FOCUSED totalMs/captureMs/renderMs;
- CATALOG_FOCUSED totalMs/projectionBuildMs/filterMs/renderMs.

Isso permite separar custo de captura, filtragem e renderização sem voltar a especular sobre áudio ou persistência.
