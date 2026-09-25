# CP-B.7 — Focused Kit Switch

## Evidência que motivou a mudança
Na CP-B.6.1, a troca lógica de kit custava poucos milissegundos, mas cada `LOAD_KIT` chamava `refreshInterface`, levando o caminho total para centenas de milissegundos quando o CONFIG_ALL estava carregado.

O custo vinha principalmente de `buildUIViewModel`, que reprocessava os quatro painéis mesmo quando apenas o Draft mudava.

## Contrato da CP-B.7
`LOAD_KIT` deve:
1. carregar o Draft do kit selecionado;
2. sincronizar apenas o highlight já existente em Meus Kits;
3. redesenhar apenas o Draft;
4. recalcular readiness física usando o novo `preferredTarget`;
5. atualizar contexto/footer.

`LOAD_KIT` não deve:
- executar `refreshInterface`;
- reconstruir Meus Kits;
- percorrer/filtrar/copiar o CONFIG_ALL;
- tocar na projeção focal do Catálogo;
- recapturar Equipment;
- mutar inventário;
- emitir áudio de movimentação.

## Telemetria
Novo modo:
`KIT_SWITCH_FOCUSED`

Campos de auditoria:
- fullDelta
- catalogUntouched
- equipmentUntouched
- equipmentRecaptureDelta
- targetRefreshDelta
- focusedMs

## Gate manual
O ganho só será homologado se o usuário não perceber stutter relevante durante alternância rápida entre kits com CONFIG_ALL já pronto.
