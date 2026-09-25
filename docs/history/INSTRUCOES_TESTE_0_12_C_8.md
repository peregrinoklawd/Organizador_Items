# SP_ORG_Items 0.12-C.8 — teste

Execute a ação **SP_ORG_Items 0.12-C.8 — Drag Visual Proxy / Item Ghost 536**.

Resultado automático esperado: **536/536**.

Depois, abra a interface e faça o smoke manual. O ponto principal não é descobrir se o DnD ainda existe — isso já foi aprovado na C.7 — e sim confirmar que a nova camada visual não o atrapalhou.

Valide:

- Catálogo → Kit Selecionado: o item deve continuar sendo adicionado e o proxy com ícone/nome deve acompanhar o mouse durante o gesto.
- Equipment → Kit Selecionado: deve continuar copiando/capturando e mostrar o proxy.
- Draft → Conteúdo do Equipamento: deve continuar aplicando a entrada e mostrar o proxy.
- Meus Kits → Kit Selecionado/Equipment: drag nativo continua funcionando; o proxy também deve aparecer quando possível.
- Soltar em qualquer região válida do painel continua aceito.
- Soltar fora cancela sem alteração.
- Clique sem deslocamento continua sendo clique, sem proxy persistente.
- Botões ←, →, -, quantidade, + e X não iniciam drag.
- O proxy deve desaparecer imediatamente após DROP/CANCEL/ESC/fechamento.
- O proxy não deve impedir hover, MouseUp ou seleção dos painéis.

No RPT, procure o fechamento:

`0.12-C.8 — BASE=530/530 C.8=6/6 FAIL=0 CUMULATIVO=536/536`

A candidata só deve ser homologada após **536/536 + validação visual/manual**.
