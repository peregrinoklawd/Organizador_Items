SP_ORG_Items 0.12-C.4
semanticVersion: 0.12.0.7
build: 0.12.0.7-c4-catalog-viewport-containment-scroll-ux

Correção principal: o ListBox 3120, mantido apenas para regressão histórica, agora é ocultado, desabilitado e movido para fora da viewport antes do primeiro refresh e em toda renderização do Catálogo.

Scroll: a CT_CONTROLS_TABLE tem scrollbar interno transparente. A navegação global visível é composta por botão ▲, slider/thumb e botão ▼, todos alinhados na mesma coluna. O slider trabalha com offset absoluto do Catálogo.

Não alterados: Application Engine, Catalog Service, Domain, Draft, Inventory, Storage, Nexus, Equipment row engine, EXACT e dispatcher físico.
