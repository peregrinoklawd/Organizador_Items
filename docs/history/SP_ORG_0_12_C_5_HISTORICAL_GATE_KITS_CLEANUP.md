# 0.12-C.5 — Historical Gate Alignment + Kits Affordance Cleanup

## Motivo
O RPT da C.4 fechou a regressão legada em 361/363. Os únicos FAILs repetidos foram 296 e 358. O 296 expôs uma geometria real: ▲/▼ ainda não eram quadrados em pixels no ultrawide. O 358 ainda simulava a antiga rail do CatalogList e, durante o próprio teste, podia disparar a ação física direita.

Também foi identificado um problema de UX em **Meus Kits**: a coluna direita exibia uma affordance parecida com `-`/seta e o tooltip sugeria clique/drag, mas o clique era pouco claro e dependia de uma hot-zone lateral. A C.5 remove essa affordance e deixa apenas dois gestos inequívocos: clique abre/seleciona; drag combina.

## Escopo
- Corrigir fisicamente a geometria dos botões ▲/▼ para aspect-safe.
- Modernizar o segmento histórico 356..359 para usar CatalogTable/controles reais.
- Remover a affordance/hot-zone KIT_ARROW da superfície Meus Kits.
- Preservar o drag de Kit e o LOAD_KIT por seleção.
- Adicionar gates 507..514.

## Fora de escopo
Nenhuma mudança no Application Engine, Catalog Service, Domain, Draft Service, Inventory, Storage ou Nexus. Nenhuma alteração na semântica de EXACT ou do X/Delete do Equipment.

## Gate alvo
Cumulativo: **514/514**.
