SP_ORG_Items 0.11 CP-D — Movement Controls + Interaction Polish
semanticVersion: 0.11.0.12
build: 0.11.0.12-cp-d-movement-interaction-polish

OBJETIVO
Fechar o marco 0.11 de interação: controles físicos por linha no Equipment, setas consistentes e proteção do wheel, preservando as otimizações focais e a camada de massa/capacidade da CP-C.

BASELINE AUTOMÁTICA
CP-C = 450/450.
CP-D acrescenta gates 451..460.
Esperado = 460/460.

CORREÇÕES HERDADAS
- Remove o caractere ampersand cru dos textos runtime que passam por Structured Text/addAction/onLoadMission.
- Mantém o helper central escapeStructuredText para conteúdo externo/dinâmico.
- O objetivo é eliminar o flood 'Unknown entity' originado pelo SP_ORG observado na CP-C.

FUNCIONALIDADES
- Kit salvo: corpo abre o kit; seta à direita combina o kit no Draft atual.
- Equipment: linha selecionada recebe - / quantidade / + / X físicos.
- Quantidade 0 e X/Delete exigem confirmação.
- Return e Numpad Enter confirmam quantidade.
- Operações do Equipment usam o VIEW U/C/M congelado, nunca applicationTarget.
- EXACT continua fiel: nenhuma quantidade inferida fabrica munição parcial.
- ATUALIZAR recaptura apenas Equipment.
- Wheel fica scoped ao display SP_ORG e não instala handler global que possa conflitar com mods.

INVARIANTES
Draft continua lógico até ação física explícita.
Storage não é escrito por refresh/seleção.
Application Target e Equipment View continuam independentes.
DRAFT_FOCUSED / CATALOG_FOCUSED / EQUIPMENT_FOCUSED / KIT_SWITCH_FOCUSED permanecem ativos.
