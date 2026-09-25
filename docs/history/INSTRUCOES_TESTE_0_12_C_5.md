# SP_ORG_Items 0.12-C.5 — Teste

Execute **SP_ORG_Items 0.12-C.5 — Historical Gate Alignment + Kits Cleanup 514** duas vezes na mesma sessão.

Esperado: **BASE C.4 = 506/506, C.5 = 8/8, FAIL=0, CUMULATIVO=514/514**.

Validação manual curta:
1. Em **Meus Kits de Itens**, nenhuma linha deve mostrar o antigo `-`/seta lateral no fim.
2. Clicar no corpo do kit deve apenas abrir/selecionar o kit.
3. Arrastar um kit ao Draft deve continuar combinando seu conteúdo.
4. No Catálogo, `←` e `→` reais continuam funcionando.
5. `▲` e `▼` da barra contínua devem aparecer compactos/quadrados; slider e wheel continuam fluidos.
6. Nenhuma superfície legada do Catálogo pode reaparecer sobre outro painel.
7. `X/Delete` do Equipment continua imediato.
8. Verifique no RPT que os históricos `ITEMS-0.8.1-296` e `ITEMS-0.9.3-358` passam e que o 358 não gera `CATALOG_ARROW_TO_PHYSICAL`/aplicação física durante o teste.
