# SP_ORG_Items 0.12-D.1 — Header Hierarchy + Player-Facing Polish

## Objetivo
A D.1 inicia o fechamento visual do marco 0.12. O foco é reduzir ambiguidade, melhorar leitura em ultrawide e apresentar ao jogador conceitos operacionais sem expor jargão de implementação desnecessário.

## Header
O cabeçalho deixa de concentrar informações concorrentes na mesma faixa e passa a usar zonas independentes:

`título | status operacional | operador | unidade | carga | barra | slot futuro | fechar`

O status central é derivado da mesma autoridade funcional já existente, porém traduz `ANY/U/C/M` para `QUALQUER/UNIFORME/COLETE/MOCHILA`. Operador e Unidade são controles distintos. A carga exibe valor atual/máximo, percentual e barra proporcional.

## Linguagem player-facing
Termos internos continuam disponíveis no código e no RPT quando úteis para diagnóstico, mas deixam de ser a linguagem principal da interface. Entre os exemplos removidos/reduzidos na UI estão `Draft`, `PHYSICAL`, `VIEW`, `BEST_EFFORT`, `REPLACE STRICT`, `preferredTarget` e `CONTENT mutável`.

A semântica não muda: Kit Selecionado continua sendo o Draft autoritativo em memória; Application Target e Equipment View continuam independentes; EXACT/DEFAULT_FULL continuam distintos internamente.

## Equipment
A representação `EXACT` continua intacta no modelo. Na linha visível, magazine parcial é apresentado pela munição individual, por exemplo `30/17/6`, sem exigir que o jogador conheça o nome do state mode.

## Footer
A hierarquia permanece `Contexto → Resultado → Histórico`. O histórico recebe contraste menor para não competir com o estado atual e o resultado da última ação.

## Congelamento funcional
A D.1 não modifica os domínios de Application, Catalog, Domain, Draft, Inventory, Storage, Integration, Runtime ou Nexus. Os componentes centrais do DnD/ghost da C.8.1 também permanecem congelados; somente strings player-facing no handler de drag foram ajustadas.

## Gates
A baseline herdada esperada é `542/542`. A D.1 adiciona gates `543..550`, cobrindo hierarquia do header, ausência de sobreposição, carga runtime, tradução de targets, remoção de jargão, simetria dos quatro painéis, footer e invariância funcional/storage/loadout.

Meta cumulativa: `550/550`.

## Status
Candidata. A C.8.1 ainda precisava de confirmação manual do ghost runtime quando a D.1 foi criada; portanto a homologação desta candidata requer também repetir o smoke manual de DnD/ghost.
