SP_ORG_Items 0.11 CP-B.6.1
Deterministic Gates & Kit Switch Trace

Base direta: CP-B.6 (0.11.0.8), testada manualmente com comportamento funcional aprovado pelo usuário, mas com 4 FAILs automáticos 432..435.

Diagnóstico fechado a partir do RPT:
1. A baseline CP-B.5 abre uma UI de smoke.
2. Se o cache CONFIG_ALL não estiver pronto, onInterfaceLoad dispara getCatalog em spawn.
3. O runner CP-B.6 começava 432..435 enquanto esse build ainda estava em andamento, com catalogBase=0.
4. Após o build terminar, testes manuais registraram CATALOG_FOCUSED em ~2–12 ms, fullRefresh=false e equipmentRecapture=false.
5. O gate 433 também tinha falso positivo textual: a busca por "fnc_getCatalog" casava com "fnc_getCatalogCategories".

Hotfix CP-B.6.1:
- novo runner runDelivery0_11CheckpointB61Tests;
- runner CP-B.6 original preservado byte a byte;
- aguarda build CONFIG_ALL já existente; só inicia build on-demand se não houver cache nem build ativo;
- gates 429..436 continuam com os mesmos IDs;
- gate 433 usa tokens exatos terminados em ';';
- Storage Guard permanece ativo;
- sem alterações em Nexus, Application Engine ou Draft Domain;
- requestDraftTransition recebeu somente telemetria UI_PERF_KIT_SWITCH, sem mudar sua semântica.

Telemetria nova ao trocar kit:
[SP_ORG] [ITEMS] [UI_PERF_KIT_SWITCH]
Campos principais:
- catalogReady / catalogBase
- logicalMs
- refreshMs
- totalMs
- fullDelta
- fullMs

Esse log permitirá decidir se KIT_SELECT ainda precisa de refresh focal próprio antes de fechar a fase de performance.
