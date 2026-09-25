# CP-B.6.1 — Rationale do hotfix

O RPT da CP-B.6 registrou BASE=428/428 e falhas apenas em 432..435.

A ordem observada foi:

1. CP-B.5 termina seus gates e a UI de smoke dispara um `getCatalog` assíncrono.
2. O runner CP-B.6 entra nos gates de Catálogo no frame seguinte.
3. Nesse instante `catalogBase=0`, portanto os refreshes focais não conseguem operar sobre um cache CONFIG_ALL válido.
4. O build termina depois com 7.140 itens.
5. Em seguida, interações manuais de categoria executam `CATALOG_FOCUSED` em poucos milissegundos, sem FULL e sem recaptura de Equipment.

Isso caracteriza corrida do runner, não evidência de regressão funcional do caminho focal.

O gate 433 tinha ainda um segundo defeito: procurar a substring `fnc_getCatalog` também encontra `fnc_getCatalogCategories`. A CP-B.6.1 muda essa checagem para tokens de chamada terminados em `;`.

A troca de kits permanece propositalmente sem otimização nesta candidata. Foi adicionada telemetria para testar a hipótese levantada pelo RPT: a sensação de ausência de engasgo ocorreu enquanto o Catálogo ainda estava vazio/em construção. A decisão de otimizar KIT_SELECT deve ser baseada nos novos logs com `catalogReady=true`.
