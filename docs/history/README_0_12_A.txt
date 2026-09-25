SP_ORG_Items 0.12-A — Header, Search + Layout Symmetry
=====================================================

Base: 0.11 CP-D homologada — 460/460 gates.
Esperado nesta candidata: 8/8 novos gates, cumulativo 468/468.

Escopo
- lupa antes das quatro barras de pesquisa;
- Meus Kits usa "items" e mostra massa estimada do kit;
- ações Salvar / Salvar como novo / Descartar / Limpar movidas para o topo do Kit Selecionado;
- Qualquer / Uniforme / Colete / Mochila substituem rótulos abreviados sem mudar códigos internos;
- cabeçalho mostra operador, unidade, carga atual/máxima e barra proporcional;
- slot reservado antes do botão fechar para ícone futuro;
- lógica física, Storage, EXACT, DnD, Catalog service e refreshes focais preservados.

Teste automático
Execute a ação:
SP_ORG_Items 0.12-A — Header, Search + Layout Symmetry 468

Esperado:
BASE CP-D = 460/460
0.12-A = 8/8
FAIL = 0
CUMULATIVO = 468/468

Execute duas vezes na mesma sessão e depois faça a validação visual descrita em INSTRUCOES_TESTE_0_12_A.md.
