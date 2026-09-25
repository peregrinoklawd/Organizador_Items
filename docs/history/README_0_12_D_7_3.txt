SP_ORG_Items 0.12-D.7.3 — Catalog Authority & Discoverability Hotfix

Objetivo
- Fechar inconsistências observadas após a homologação automática da D.7.2 sem reabrir o motor físico.

Correções
- O botão direito/amarelo do Catálogo adiciona o item ao equipamento atualmente exibido em Mostrar (equipmentView).
- Onde aplicar o kit? continua governando somente APLICAR / REMOVER / SUBSTITUIR do Kit Selecionado.
- PUBLICAR agora toca o mesmo cue SUCCESS usado na cópia Público -> Privado.
- COPIADO/PUBLICADO permanecem visíveis até a próxima interação do jogador e são então removidos.
- Textos explicativos não usam mais setas como caracteres, evitando sobreposição de fonte.
- O contador do catálogo usa linguagem simples: Mostrando X a Y de Z itens / Nenhum item encontrado.
- O catálogo é ordenado alfabeticamente por nome (e className como desempate) uma vez após o scan CONFIG_ALL. Isso torna filtros como MÉDICO previsíveis; itens continuam virtualizados e podem exigir rolagem quando a categoria possui mais de 32 itens.

Não alterado
- DnD aprovado;
- Whole-Kit Application Engine;
- EXACT/munição parcial;
- Storage/Repository;
- semântica de APLICAR/REMOVER/SUBSTITUIR.

Teste automático
- Baseline: D.7.2 = 638/638.
- D.7.3: gates 639..646.
- Alvo cumulativo: 646/646.

A execução dentro do Arma 3 continua sendo o gate definitivo.
