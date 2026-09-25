SP_ORG_Items 0.12-C.7 — Unified Pointer DnD + Coordinate-Safe Hit Test

BASE
- 0.12-C.5: baseline automática 514/514.
- 0.12-C.6: reprovada manualmente; 520/524 no RPT, com destino OUTSIDE/NONE em drops válidos.

CORREÇÃO
1. Display MouseButtonDown arma uma origem somente se o ponteiro estiver sobre Picture/Name de uma linha real.
2. Display MouseMoving acumula apenas xDelta/yDelta até um limiar mínimo.
3. Ao cruzar o limiar, a origem é congelada em um UIDragSnapshot.
4. Hover/drop usa getMousePosition e bounds de painel em coordenadas UI.
5. Display MouseButtonUp finaliza o drop pelo mesmo executor central.
6. Meus Kits mantém onLBDrag nativo, mas converge ao mesmo resolvedor/finalizador de painel.
7. Botões ←/→/-/qtd/+/X não são superfícies de drag.

GATES
- C.6 corrigida: 515..524 => 524/524 esperado.
- C.7: 525..530 => 530/530 esperado.

NÃO ALTERADO
- Application Engine;
- Catalog Service / CONFIG_ALL;
- Domain / Draft Service / Inventory / Storage;
- EXACT / DEFAULT_FULL;
- X/Delete imediato no Equipment;
- refreshes focais e virtualização do Catálogo.
