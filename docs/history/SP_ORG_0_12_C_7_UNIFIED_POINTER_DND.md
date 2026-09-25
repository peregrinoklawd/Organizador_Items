# 0.12-C.7 — Unified Pointer DnD + Coordinate-Safe Hit Test

## Motivo
A C.6 mostrou que o dispatcher de transferência permanecia funcional, mas o gesto humano real não fechava o ciclo. O RPT registrava `START` seguido de `DROP ... destination=NONE ... OUTSIDE` para áreas visualmente válidas.

## Causa tratada
- `MouseMoving` do display entrega deslocamentos (`xDelta/yDelta`), e não posição absoluta do cursor. A C.6 usava esses valores como se fossem coordenadas de tela.
- Catálogo, Equipment e Draft dependiam de `MouseButtonDown` instalado diretamente em controles-filho de `CT_CONTROLS_TABLE`; o runner conseguia chamar esses handlers sinteticamente, mas o mouse real não os acionava de forma confiável.

## Arquitetura C.7
- O display recebe `POINTER_DOWN`, `POINTER_MOVE` e `MOUSE_UP`.
- `resolveUIPointerSource` faz hit-test somente em Picture/Name das linhas materializadas.
- `POINTER_MOVE` soma somente distância percorrida. Ao cruzar o threshold, cria o snapshot congelado.
- `resolveUIPanelDropTarget` usa bounds compartilhados com o layout e posição corrente em coordenadas UI.
- `finalizeUIPointerDrop` converge ao `executeUITransferCommand` já existente.
- Meus Kits mantém drag nativo para não introduzir regressão em um caminho que já era confiável.

## Contratos preservados
- Catalog/Equipment/Kit → Draft são operações lógicas.
- Equipment → Draft é cópia/captura.
- Catalog/Kit/ENTRY → físico usa Application Target.
- Equipment → Equipment por DnD permanece bloqueado.
- Botões de linha nunca iniciam drag.
- EXACT não fabrica stateData.
- Nenhum autosave.
