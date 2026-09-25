# SP_ORG_Items 0.11 CP-B.7 — Teste

## Automático
Execute a ação:

`SP_ORG_Items 0.11 CP-B.7 — Focused Kit Switch 442`

Execute duas vezes na mesma sessão.

Esperado em cada execução:
- BASE CP-B.6.1 = `436/436`
- CP-B.7 = `6/6`
- FAIL = `0`
- CUMULATIVO = `442/442`

Os novos gates são `437..442`.

## Manual prioritário
Aguarde o log de conclusão do `Catalog CONFIG_ALL` e então:

1. abra a interface;
2. troque rapidamente entre vários kits salvos;
3. repita a alternância várias vezes;
4. observe se ainda há stutter;
5. envie o RPT.

### Telemetria esperada
Cada troca bem-sucedida deve produzir:

`[UI_PERF] mode=KIT_SWITCH_FOCUSED ... fullDelta=0 ... catalogTouched=false ... equipmentRecapture=0 ... kitsRebuilt=false`

E:

`[UI_PERF_KIT_SWITCH] ... fullDelta=0 ... catalogUntouched=true equipmentUntouched=true equipmentRecaptureDelta=0 targetRefreshDelta=1`

### Meta manual
- ideal: `< 50 ms` total por troca;
- o critério obrigatório estrutural é `fullDelta=0` e ausência de reconstrução de Catálogo/Equipment.

## Regressões rápidas
Confirme também:
- Catalog → Draft continua fluido;
- filtros do Catálogo continuam `CATALOG_FOCUSED`;
- U/C/M continua `EQUIPMENT_FOCUSED`;
- áudio de movimento continua funcionando;
- trocar kit não emite som de movimentação;
- Application Target e Equipment View continuam independentes.
