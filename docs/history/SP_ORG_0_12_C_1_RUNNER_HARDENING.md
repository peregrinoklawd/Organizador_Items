# 0.12-C.1 — Runner Syntax & Historical Gate Hardening

Esta entrega corrige exclusivamente a infraestrutura cumulativa de testes observada no RPT da 0.12-C. A superfície funcional da 0.12-C permanece congelada.

## Causa raiz

Os runners copiados de 0.8.1/0.9.3 usavam `((_ctrl) ctrlTooltip)`, sintaxe inválida para o comando unário SQF. O erro impedia o retorno normal da regressão legada e gerava cascata de `_legacy`, `_legacyOk` e `_baseOk` indefinidos.

O gate histórico 425 também exigia `fnc_filterCatalog`, embora a 0.12-C tenha substituído esse custo pela janela virtual `fnc_getUICatalogWindow`. O ID 425 foi mantido, mas o requisito foi atualizado para preservar sua intenção original: telemetria FULL, recaptura explícita de Equipment e cópia apenas da janela visível.

## Invariantes

- 488 gates; nenhum gate novo.
- X/Delete Equipment permanece imediato.
- quantidade 0 permanece confirmada.
- Catalog Continuous List, row actions, EXACT, Storage, Application Engine e refreshes focais não mudam.
