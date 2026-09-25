SP_ORG_Items 0.12-C.8.1 — Runtime Drag Ghost Fix

Base: 0.12-C.8, mantendo a 0.12-C.7 como baseline funcional do DnD.

Problema corrigido:
A C.8 adicionou um proxy visual estático ao diálogo, mas no gesto humano ele não aparecia acompanhando o mouse. O DnD funcional permaneceu correto.

Correção:
- removidos os três controles estáticos do ghost;
- um único RscStructuredText é criado via ctrlCreate quando o drag entra em ACTIVE;
- por ser criado depois das tabelas/linhas, o proxy fica na camada superior do display;
- o proxy é ctrlEnable false e não participa do hit-test;
- MOVE reposiciona usando getMousePosition;
- o texto/ícone são montados apenas no START ou se a origem mudar, evitando parseText em todo movimento;
- cancel/drop/unload executam ctrlDelete;
- telemetria limitada a CREATE/MOVE_FIRST/HIDE.

Nenhuma mudança intencional em:
- Application Engine;
- Catalog Service;
- Domain/ItemEntry/ItemKit;
- Draft Service;
- Inventory/capture;
- Storage;
- Nexus;
- semântica de destino/hit-test da C.7.

Automático esperado: 536/536 da C.8 modernizada + 6/6 da C.8.1 = 542/542.
A homologação continua dependendo do teste visual humano do ghost.
