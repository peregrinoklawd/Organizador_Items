# 0.12-B — Equipment Row Controls + Capacity UX

A superfície visual do Equipment foi migrada de ListBox + editor global para CT_CONTROLS_TABLE. Cada linha possui seus próprios controles e carrega payload/VIEW congelados. O executor físico não foi duplicado: toda mutação continua convergindo para `requestEquipmentRowAction -> executeEquipmentRowAction -> executeUITransferCommand`.

A capacidade passa a ter barra dedicada e leitura `Usado / Total / Livre / %`, usando as métricas do container já existentes.

Compatibilidade: os IDCs históricos 4120 e 4130–4133 continuam fora da tela para que gates antigos e fallbacks não sejam quebrados.

O refinamento do header foi deliberadamente adiado para 0.12-D.
