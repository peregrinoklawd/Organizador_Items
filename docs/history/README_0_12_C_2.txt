SP_ORG_Items — 0.12-C.2
Runner Completion + Catalog Arrow Parity

OBJETIVO
- restaurar a regressão cumulativa após mudanças legítimas do Catálogo contínuo;
- manter IDs históricos dos gates modernizados;
- apresentar ← no início de cada linha do Catálogo para copiar ao Kit Selecionado/Draft;
- apresentar → no fim de cada linha para ADD físico no Destino de Aplicação;
- preservar corpo/ícone como seleção pura;
- preservar janela virtual de 120 itens e CATALOG_FOCUSED;
- preservar X/Delete imediato no Conteúdo do Equipamento.

AUTOMÁTICO
Execute a ação:
SP_ORG_Items 0.12-C.2 — Runner Completion + Catalog Arrow Parity 494

Esperado:
BASE 0.12-C.1 = 488/488
0.12-C.2 = 6/6
FAIL = 0
CUMULATIVO = 494/494

MANUAL
1. Catálogo: ← no início envia uma unidade ao Draft.
2. Catálogo: → no fim aplica uma unidade ao Destino de Aplicação atual.
3. Clique no corpo ou no ícone apenas seleciona.
4. Wheel, ▲, ▼ e slider percorrem uma lista contínua sem paginação visível.
5. RPT deve continuar mostrando CATALOG_FOCUSED sem incremento de FULL em scroll normal.
6. Equipment: X/Delete continua removendo imediatamente, sem confirmação.
7. EXACT, Storage Guard e separação Application Target / Equipment View permanecem intactos.

STATUS
Candidata. Homologar somente após 494/494, RPT limpo e smoke manual.
