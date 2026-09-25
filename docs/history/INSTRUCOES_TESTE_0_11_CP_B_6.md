# SP_ORG_Items 0.11 CP-B.6 — Instruções de teste

## 1. Automático
Execute a ação:

`SP_ORG_Items 0.11 CP-B.6 — View/Catalog Perf 436`

Esperado:

- BASE CP-B.5: 428/428
- CP-B.6: 8/8
- FAIL: 0
- CUMULATIVO: 436/436

Execute uma segunda vez na mesma sessão para confirmar idempotência.

## 2. Equipment View — teste prioritário
Abra a interface e faça rapidamente:

1. U → U várias vezes;
2. U → C → M → U;
3. C → C e M → M;
4. repita com Equipment contendo algumas linhas.

Esperado:

- U→U/C→C/M→M não apresenta micro-stutter perceptível;
- VIEW redundante não recaptura o container;
- troca real U/C/M recaptura apenas o painel Conteúdo do Equipamento;
- Catálogo, Kit Selecionado e Meus Kits não piscam/reconstroem;
- applicationTarget não é alterado.

RPT esperado:

`[UI_PERF] mode=EQUIPMENT_FOCUSED ... captured=false sameView=true`

para U→U; e:

`[UI_PERF] mode=EQUIPMENT_FOCUSED ... captured=true sameView=false`

para troca real de view.

Não deve aparecer `mode=FULL` a cada clique de VIEW.

## 3. Catálogo — filtros
Clique rapidamente em:

TODOS → MUNI → GRAN → EXPL → FERR → ALIM → MED → OUT → TODOS

Esperado:

- nenhum micro-stutter relevante;
- somente a lista do Catálogo é reconstruída;
- Equipment não é recapturado;
- Draft e Meus Kits não mudam;
- não há novo CONFIG_ALL scan.

RPT esperado:

`[UI_PERF] mode=CATALOG_FOCUSED reason=CATALOG_CATEGORY ...`

A primeira utilização pode mostrar `projectionBuildMs > 0` se o índice UI ainda não tiver sido aquecido. As seguintes devem reutilizar o índice e mostrar `projectionBuildMs=0`.

## 4. Busca e paginação
Digite algumas buscas e use a paginação do catálogo.

Esperado:

- `CATALOG_FOCUSED`;
- sem FULL;
- sem Equipment recapture;
- sem save/persistência;
- sem rebuild CONFIG_ALL.

## 5. Regressão rápida
Confirme também:

- Catalog → Draft continua fluido;
- + / - / Delete / quantidade 0 continuam fluidos;
- som `real_bagclose` (quando disponível) continua tocando;
- APLICAR/REMOVER permanecem visualmente fluidos;
- LIMPAR Kit e LIMPAR Equipment continuam com semânticas distintas.

Envie o RPT se houver qualquer FAIL ou stutter perceptível.
