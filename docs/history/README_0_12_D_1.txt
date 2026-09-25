SP_ORG_Items 0.12-D.1
Header Hierarchy + Player-Facing Polish

Esta entrega inicia a etapa 0.12-D de acabamento final da interface.

A lógica funcional permanece herdada da 0.12-C.8.1. A D.1 não altera Application Engine, Storage, Catalog Service, Domain, Draft, Inventory, Nexus nem o resolvedor/finalizador do DnD. O foco é apresentação: hierarquia do cabeçalho, rótulos completos, redução de termos internos e melhor leitura em ultrawide.

Principais mudanças:
- header dividido em zonas: título | status | operador | unidade | carga | barra | slot futuro | fechar;
- status operacional traduzido para QUALQUER / UNIFORME / COLETE / MOCHILA;
- Operador e Unidade deixam de competir pelo mesmo campo;
- Carga mostra valor atual/máximo, percentual e barra proporcional;
- tooltips e footer deixam de expor termos como Draft, PHYSICAL, VIEW, BEST_EFFORT e REPLACE STRICT quando não são úteis ao jogador;
- histórico do footer recebe menor contraste que Contexto/Resultado;
- Equipment continua preservando EXACT internamente, mas exibe munição parcial de forma player-facing.

Teste automático esperado: 550/550.

A entrega é candidata. Homologação depende do RPT e da inspeção manual, inclusive do DnD/ghost herdado da C.8.1.
