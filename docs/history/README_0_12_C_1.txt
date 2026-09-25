SP_ORG_Items 0.12-C.1 — Runner Syntax & Historical Gate Hardening

Base: 0.12-C Catalog Continuous List + Row Actions.

Esta candidata preserva toda a funcionalidade da 0.12-C e corrige somente a cadeia cumulativa de testes observada no RPT:
- ctrlTooltip em sintaxe unária válida nos runners 0.8.1 e 0.9.3;
- gate histórico 425 atualizado para getUICatalogWindow, mantendo o mesmo ID;
- fronteiras de runner protegidas contra cascata de variáveis indefinidas quando uma chamada interna não retorna.

Gate esperado: 488/488.
Não existem gates novos nesta candidata.
