# Known Automated Test Debt — 0.12 FINAL

## Gates 516 e 523

Origem: 0.12-C.6 — Panel-Wide Drop Targets + DnD Restoration.

Estado na 0.12 FINAL:
- comportamento DnD real foi validado manualmente com sucesso;
- gates automáticos 516/523 ainda podem falhar por fragilidade histórica do runner/hit-test sintético;
- a falha aciona fail-fast e impede checkpoints automáticos posteriores de executarem;
- não houve evidência manual de regressão equivalente;
- por decisão de release, os gates permanecem inalterados e documentados.

Regra futura: só reabrir esse débito se a suíte cumulativa completa voltar a ser requisito de release ou se surgir regressão humana/reproduzível no DnD.
