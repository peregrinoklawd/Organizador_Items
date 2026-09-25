# SP_ORG_Items 0.12-C.7 — teste

Execute a ação **SP_ORG_Items 0.12-C.7 — Unified Pointer DnD + Coordinate-Safe Hit Test 530**.

Resultado automático esperado: **530/530**.

Depois faça o smoke manual obrigatório:

1. Catálogo → Kit Selecionado: segure no **nome ou ícone**, mova alguns pixels e solte em diferentes regiões do painel, inclusive fora da faixa destacada.
2. Equipment → Kit Selecionado: mesmo procedimento; a origem física não deve ser removida e EXACT deve ser preservado.
3. Draft → Conteúdo do Equipamento: arraste uma linha pelo nome/ícone e solte em regiões diferentes do painel físico; deve obedecer ao **Destino de aplicação**, não ao Equipment View.
4. Meus Kits → Kit Selecionado: deve continuar combinando o kit via drag nativo.
5. Meus Kits → Conteúdo do Equipamento: deve aplicar fisicamente o kit no destino contratado.
6. Clique em nome/ícone **sem mover**: deve continuar sendo clique/seleção, não drag.
7. Tente iniciar drag por `←`, `→`, `-`, quantidade, `+` e `X`: nenhum desses controles deve virar alça de arraste.
8. Solte fora de qualquer painel aceito: o gesto deve cancelar sem mutação.

No RPT, procure por:

- `[DND] START ... pointerAuthority=DISPLAY_POINTER` para Catálogo/Equipment/Draft;
- `[DND] HOVER ... coord=GET_MOUSE_POSITION` ao entrar em um painel;
- `[DND] DROP ... accepted=true` em drop válido;
- ausência de `destination=NONE ... OUTSIDE` quando o cursor estiver claramente dentro de um painel válido.

A candidata só deve ser homologada após **530/530 + smoke manual aprovado**.
