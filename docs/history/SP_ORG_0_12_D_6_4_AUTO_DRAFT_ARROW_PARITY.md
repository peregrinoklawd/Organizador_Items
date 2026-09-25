# SP_ORG_Items 0.12-D.6.4 — Auto Draft Arrow Parity + Regression Close

## Objetivo

Eliminar o último atrito entre os dois gestos explícitos usados para alimentar `KIT SELECIONADO`.
Na D.6.3, arrastar um item para o painel vazio já criava um Rascunho automaticamente, mas clicar na seta `←` ainda exigia `NOVO`/kit aberto.
A D.6.4 torna os dois fluxos equivalentes.

## Regra funcional

Quando não existe Rascunho aberto:

- `Catálogo ←` cria `Novo Kit` em memória e adiciona uma unidade do item.
- `Conteúdo do Equipamento ←` cria `Novo Kit` em memória e copia a entrada para o Rascunho, preservando a origem física.
- DnD de Catálogo/Equipment/Kit para `KIT SELECIONADO` continua com o comportamento aprovado da D.6.3.

A criação automática **não** ocorre em seleção, pesquisa, troca de `Mostrar`, troca de `Onde aplicar o kit?` ou chamadas lógicas internas que não declarem explicitamente a intenção de auto-criação.

## Contrato técnico

O dispatcher continua único. Os gestos explícitos de adição enviam `autoCreateDraftIfMissing=true` para a transferência lógica.
`fn_handleUITransferToDraft.sqf` preserva compatibilidade com origens `DND_*` e com a opção histórica `autoCreateDraftOnDrop`.

Se a criação do Rascunho ocorrer e a transferência seguinte falhar, o estado anterior é restaurado. Assim não sobra Rascunho vazio/fantasma.

## Regressão automática identificada

O RPT da D.6.3 fechou até C.4 e falhou exclusivamente em `ITEMS-0.12-510` dentro da C.5. O gate ainda procurava a copy `Draft atual`, mas a interface já havia sido padronizada para `Rascunho atual`. O smoke runtime seguinte (`513`) passou, confirmando que a UI estava correta e o problema era o teste estático obsoleto.

A D.6.4 atualiza esse gate sem reintroduzir a terminologia antiga.

## Gates D.6.4

- 611 — registro/versão/contrato 617.
- 612 — correção histórica do gate 510.
- 613 — política central de auto-criação compartilhada por DnD/setas.
- 614 — Catálogo ← cria Rascunho e adiciona item.
- 615 — Equipment ← cria Rascunho e copia item.
- 616 — chamada neutra sem opt-in continua bloqueada.
- 617 — invariância final de loadout/storage e restauração de estado.
