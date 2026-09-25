SP_ORG_Items 0.12-C.8 — Drag Visual Proxy / Item Ghost

Esta entrega não reescreve o DnD. A 0.12-C.7 permanece a base funcional do gesto, do hit-test em coordenadas UI e dos destinos por painel inteiro.

Delta funcional:
1. Novo proxy visual pass-through, composto por fundo, ícone e nome.
2. A posição acompanha getMousePosition durante drag ativo.
3. Ícone e nome são congelados junto ao payload no START.
4. O proxy é ctrlEnable false e nunca participa do resolvedor de origem/destino.
5. DROP, cancelamento e unload escondem o proxy deterministicamente.
6. Meus Kits mantém o drag nativo e recebe o mesmo feedback visual quando seu START é recebido.

Invariantes preservados:
- Catálogo virtualizado e CATALOG_FOCUSED.
- Equipment/Draft/Target independentes.
- EXACT preservado.
- X/Delete imediato no Equipment.
- Storage Guard.
- DnD por painel inteiro da C.7.
- Botões não iniciam drag.

Gates novos: 531..536.
Esperado: 530/530 da C.7 + 6/6 da C.8 = 536/536.
