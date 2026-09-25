SP_ORG_Items 0.11 CP-B.7 — Focused Kit Switch
semanticVersion: 0.11.0.10
build: 0.11.0.10-cp-b7-focused-kit-switch
baseline automática: CP-B.6.1 = 436/436
novo cumulativo esperado: 442/442

Mudança funcional:
- LOAD_KIT não executa mais refreshInterface FULL.
- A lista Meus Kits não é reconstruída; somente a seleção é sincronizada.
- O Draft é redesenhado via DRAFT_FOCUSED existente.
- Readiness física é recalculada porque preferredTarget pode mudar entre kits.
- Catálogo não é filtrado/copiado/renderizado novamente.
- Equipment não é recapturado/renderizado novamente.

Congelado:
- Nexus
- Domain
- Storage
- Catalog service
- Inventory
- Draft Domain
- Application Engine
- Physical Transaction Engine
- áudio e feedback

Esta candidata NÃO está homologada até passar 442/442 e smoke manual de performance.
