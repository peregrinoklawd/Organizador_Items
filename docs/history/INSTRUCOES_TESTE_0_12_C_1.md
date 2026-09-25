# SP_ORG_Items 0.12-C.1 — Teste

Execute a ação **SP_ORG_Items 0.12-C.1 — Runner Syntax + Historical Gate Hardening 488** duas vezes na mesma sessão.

Esperado:

```text
BASE 0.12-B = 478/478
0.12-C = 10/10
FAIL = 0
CUMULATIVO = 488/488
```

No RPT não deve existir erro SP_ORG `Faltante )`, `_legacy`, `_legacyOk` ou `_baseOk`. O gate 425 deve PASS usando `getUICatalogWindow` e recusando regressão para `filterCatalog`.

Smoke manual: X/Delete no Equipment continua sem confirmação; quantidade 0 continua confirmada; wheel/slider e setas ←/→ do Catálogo continuam funcionais.
