# SP_ORG_Items 0.12-D.7.0 — Private/Public Library Foundation

## Decisão arquitetural
A entrega separa duas autoridades que não devem ser confundidas:

- **PRIVATE**: Repository persistente do jogador, já homologado.
- **PUBLIC**: snapshots compartilhados na sessão, independentes e somente leitura na UI.

Publicar não cria vínculo vivo. Isso evita que uma edição local altere silenciosamente aquilo que outros jogadores enxergam. Uma atualização pública exige `PUBLICAR` novamente.

## Contrato de cópia
`SALVAR NO PRIVADO` sempre clona o ItemKit público, gera um novo ID e grava `origin=["PUBLIC_COPY", publicId]`. O ID do snapshot nunca entra diretamente no Repository privado.

## Por que SESSION-scoped agora
Persistência e autoridade de servidor exigem decisões de concorrência, permissões, JIP, ownership, moderação e armazenamento. Forçar tudo isso nesta entrega reabriria uma superfície grande demais justamente quando a UI e o motor físico chegaram à maturidade.

A D.7.0 cria a costura correta para que o próximo marco possa trocar o provider da biblioteca pública sem alterar a UX.
