SP_ORG_Items 0.12-D.3
Tooltip + Action Hierarchy Recovery

BASE
- derivada diretamente da candidata 0.12-D.2;
- não altera Application Engine, Storage, domínio, catálogo lógico, Nexus ou Foundation;
- preserva DnD display-pointer e runtime ghost.

CORREÇÕES
- novo controlador de tooltip runtime/pass-through;
- SYNC de hover reaproveita fn_resolveUIPointerSource, a mesma autoridade usada para iniciar o DnD;
- MouseEnter/MouseExit permanecem como caminho auxiliar e ctrlSetTooltip nativo é mantido como fallback;
- tooltip é removido antes do ghost, durante rebuild de linhas e no unload;
- runner D.2 agora é registrado em description.ext;
- novo runner D.3 registra e valida gates 559..566.

UX
- "Onde aplicar o kit?" identifica os quatro botões de destino;
- "O que deseja fazer?" identifica APLICAR / REMOVER / SUBSTITUIR;
- posições dos botões foram preservadas;
- explicações detalhadas ficam nos tooltips, evitando poluir a interface.

GATE
- cumulativo esperado: 566/566.

STATUS
- candidata para teste manual e automático no Arma 3.
