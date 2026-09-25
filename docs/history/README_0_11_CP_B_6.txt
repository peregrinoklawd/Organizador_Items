SP_ORG_Items 0.11 CP-B.6 — Focused Equipment View & Catalog Performance

Status: CANDIDATA DE TESTE
Semantic version: 0.11.0.8
Build: 0.11.0.8-cp-b6-focused-equipment-catalog-performance
Base funcional imediata: CP-B.5 (micro-stutter de movimentações lógicas eliminado manualmente pelo usuário)
Baseline homologada anterior: CP-B 414/414

Objetivo desta candidata:
1) eliminar refresh global ao trocar VIEW U/C/M;
2) tornar U→U/C→C/M→M um NOOP sem recaptura;
3) eliminar refresh global em filtros/paginação/busca do Catálogo;
4) evitar a cópia defensiva dos ~milhares de itens do catálogo a cada filtro;
5) preservar áudio e DRAFT_FOCUSED da CP-B.5;
6) produzir telemetria UI_PERF específica para Equipment e Catálogo.

Esperado automático:
BASE CP-B.5 = 428/428
CP-B.6 = 8/8
CUMULATIVO = 436/436

Modos UI_PERF relevantes:
- FULL
- DRAFT_FOCUSED
- PHYSICAL_FOCUSED
- TARGET_ONLY
- EQUIPMENT_FOCUSED
- CATALOG_FOCUSED

Esta entrega não altera Nexus, Application Engine nem Draft Domain.
