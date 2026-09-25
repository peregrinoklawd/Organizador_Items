# SP_ORG_Items 0.11 CP-B.6.1 — Teste

## Automático

Execute a ação:

`SP_ORG_Items 0.11 CP-B.6.1 — View/Catalog Perf 436`

Esperado:

- BASE CP-B.5 = 428/428
- CP-B.6.1 = 8/8
- FAIL = 0
- CUMULATIVO = 436/436

Execute **duas vezes na mesma sessão**.

Durante a transição da baseline para os gates novos deve existir uma linha:

`[TEST_SYNC] checkpoint=CP-B.6.1 ... ready=true items=...`

É aceitável `mode=WAIT_EXISTING_BUILD`: significa que o runner aguardou o build assíncrono já iniciado, em vez de testar com `catalogBase=0`.

## Manual prioritário

Depois que aparecer no RPT:

`Catalog CONFIG_ALL construído: ...`

1. Abra a interface.
2. U → U repetidamente.
3. U → C → M → U.
4. Troque rapidamente os filtros TODOS/MUNI/GRAN/EXPL/FERR/ALIM/MED/OUT.
5. Teste busca e paginação.
6. Faça Catálogo → Draft e confirme fluidez e som.
7. **Troque várias vezes entre kits existentes em MEUS KITS.**

## Logs esperados

Equipment:

`mode=EQUIPMENT_FOCUSED`

Catálogo:

`mode=CATALOG_FOCUSED`

Troca de kit:

`[UI_PERF_KIT_SWITCH] ... catalogReady=true catalogBase=... logicalMs=... refreshMs=... totalMs=... fullMs=...`

Para a troca de kits, o objetivo desta candidata é **medir**, não mascarar. Se `refreshMs/fullMs` ainda estiver alto com `catalogReady=true`, o próximo hotfix deverá focalizar KIT_SELECT antes da homologação final da fase CP-B/performance.

## Não deve ocorrer

- FAIL 432..435 por cache ainda vazio;
- segundo CONFIG_ALL concorrente iniciado pela CP-B.6.1 enquanto outro já está rodando;
- alteração de storage real pelos novos gates;
- regressão de DRAFT_FOCUSED, Equipment View, som ou transações físicas.
