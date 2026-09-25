# 0.12-C.8 — Drag Visual Proxy / Item Ghost

## Motivação

A 0.12-C.7 corrigiu o DnD real e foi aprovada em automáticos e smoke manual, mas substituiu o feedback visual que antes dava a sensação de o item estar sendo “segurado” pelo cursor. O gesto funcionava, porém sem uma representação acompanhando o mouse.

## Solução

A C.8 adiciona um proxy visual independente da lógica do DnD. Ele usa três controles do próprio display: fundo translúcido, ícone e texto. Os controles ficam desabilitados e portanto não são uma superfície de interação.

O proxy é mostrado somente depois de o limiar de movimento transformar o clique em drag ativo. Sua posição vem de `getMousePosition`, com pequeno offset e clamp dentro da `safeZone`.

## Payload visual congelado

`createUIDragSnapshot` passa a aceitar opcionalmente `sourcePicture`. `resolveUIPointerSource` lê o Picture da mesma linha materializada que forneceu o nome/payload. Assim o ghost não consulta catálogo ou inventário durante o movimento.

Para Meus Kits, o caminho nativo preservado tenta usar `lbPicture` da linha selecionada; se não houver imagem, o proxy continua válido com o nome.

## Segurança arquitetural

`fn_updateUIDragVisualProxy.sqf` é exclusivamente visual. Não chama `executeUITransferCommand`, Application Engine, Draft mutation, Storage ou refresh físico.

O resolvedor de origem continua olhando somente Picture/Name das CT_CONTROLS_TABLE reais. O resolvedor de destino continua sendo o da C.7. O proxy não entra em nenhum deles.

## Cleanup

`cancelUIDrag` esconde os três controles. Como DROP converge para cancelamento e `onInterfaceUnload` também cancela o gesto, não há ghost persistente após término da interação.

## Gates

- 531 — presença, integração e pass-through estrutural.
- 532 — snapshot congela `sourcePicture` junto com texto/identidade.
- 533 — smoke runtime do proxy visível e desabilitado.
- 534 — movimento/clamp dentro da safeZone.
- 535 — Picture real da CatalogTable chega ao resolvedor/snapshot.
- 536 — cleanup + invariância de loadout/storage + pureza visual.

Alvo cumulativo: **536/536**.
