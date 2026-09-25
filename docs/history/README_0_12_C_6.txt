SP_ORG_Items 0.12-C.6
Panel-Wide Drop Targets + DnD Restoration
semanticVersion: 0.12.0.9
build: 0.12.0.9-c6-panel-wide-drop-targets-dnd-restoration

Mudanças principais:
- restaura drag real por nome/ícone em Catálogo, Equipment e linhas do Draft;
- preserva Meus Kits como drag nativo;
- Kit Selecionado inteiro vira zona de drop lógico para Catálogo, Equipment e Kit;
- Conteúdo do Equipamento inteiro vira zona de drop físico para Catálogo, Kit e linha do Draft;
- Draft row é congelada como uma ItemEntry v1 e não aplica o Draft inteiro;
- botões de linha não iniciam drag;
- telemetria DND START/HOVER/DROP;
- gate histórico 489 alinhado à CatalogTable atual;
- Catálogo virtualizado em 32 linhas, EXACT, Storage Guard e X/Delete imediato preservados.

Sem mudança em Application Engine, Catalog Service, Domain, Draft Domain, Inventory, Storage ou Nexus.
