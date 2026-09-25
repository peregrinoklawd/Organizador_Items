# SP_ORG_Items 0.11 CP-C — roteiro de teste

## 1. Gate automático
Execute a ação:

`SP_ORG_Items 0.11 CP-C — Capacity & Item Awareness 450`

Preferencialmente rode duas vezes consecutivas na mesma sessão.

Esperado em cada execução:
- CP-B.7 herdada: `442/442`
- CP-C: `8/8`
- `FAIL=0`
- cumulativo: `450/450`

Também procure por:
- `[TEST_FIXTURE] CP-B.7 ... target=UNIFORM ... target=VEST`
- ausência de `Error in expression` / `Undefined variable` em arquivos SP_ORG.

## 2. Massa do Catálogo
Com `Catalog CONFIG_ALL construído`:
- percorra categorias e busca;
- confira o sufixo de massa unitária em `u`;
- a troca de categoria/página/busca deve continuar `CATALOG_FOCUSED`.

## 3. Draft / Kit Selecionado
- abra um kit com várias linhas;
- confira massa por linha;
- confira massa total no status do Draft;
- altere quantidade e confirme com Enter;
- a massa total deve acompanhar a quantidade;
- operações devem continuar `DRAFT_FOCUSED`.

## 4. Magazines EXACT
- abra/capture um kit que contenha magazines EXACT;
- estados individuais (por exemplo `[30,17,6]`) devem continuar visíveis/intactos;
- awareness de massa não pode converter EXACT em DEFAULT_FULL.

## 5. Equipment
Troque VIEW U/C/M:
- quantidade por linha deve estar visível;
- massa da linha deve estar visível;
- status deve mostrar massa total do CONTENT;
- quando conhecido, deve mostrar `carga usada/máxima` e `livre`;
- container ausente deve continuar claramente indisponível;
- mudança real U/C/M deve continuar `EQUIPMENT_FOCUSED`.

## 6. Application Target
Troque ANY/U/C/M e observe:
- requested target continua separado do resolved target;
- quando capacidade for conhecida, o cabeçalho/contexto mostra carga do target resolvido;
- target-only refresh não recaptura Equipment.

## 7. Regressão de performance da troca de kits
Depois do CONFIG_ALL pronto, alterne rapidamente entre kits.
Esperado:
- `KIT_SWITCH_FOCUSED`
- `fullDelta=0`
- `catalogUntouched=true`
- `equipmentUntouched=true`
- `equipmentRecaptureDelta=0`
- percepção sem o stutter de ~400–450 ms da CP-B.6.1.

Envie o RPT completo e informe qualquer divergência visual/funcional.
