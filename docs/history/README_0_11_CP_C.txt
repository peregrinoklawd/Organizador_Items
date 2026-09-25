SP_ORG_Items 0.11 CP-C — Capacity & Item Awareness
semanticVersion: 0.11.0.11
build: 0.11.0.11-cp-c-capacity-item-awareness

BASE
- CP-B.6.1: 436/436.
- CP-B.7: implementação KIT_SWITCH_FOCUSED validada manualmente; candidato original apresentou 440/442 por defeito no fixture do runner.
- Nesta CP-C, os gates herdados 438/441 são corrigidos sem alterar os IDs históricos; a baseline exigida passa a ser 442/442 antes dos gates novos.

NOVO NA CP-C
- Item Awareness reutiliza massEstimate do cache quando disponível.
- Massa unitária e massa da linha no Draft, Catálogo e Equipment.
- Massa total do Draft.
- Massa total do CONTENT do equipmentView.
- Quantidade permanece explícita no Equipment.
- Capacidade nativa: currentLoad / maximumLoad / availableLoad quando conhecida.
- Readiness publica requestedTarget, preferredTarget, resolvedTarget e capacidade separadamente.
- Unidade visual "u" significa unidade nativa de massa/carga do Arma; não é kg.

INVARIANTES
- EXACT mantém stateData individual intacto.
- Nenhum cálculo pesado por frame.
- Nenhum novo scan CONFIG_ALL por interação comum.
- Nenhuma escrita persistente causada por awareness.
- Application Target e Equipment View continuam independentes.
- KIT_SWITCH_FOCUSED continua sem FULL/Catalog/Equipment recapture.

FORA DE ESCOPO
- + / - / Delete / edição de quantidade diretamente no Equipment: CP-D.
- interceptação do mouse wheel / polimento final de interação: CP-D.
