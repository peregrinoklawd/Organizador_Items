# SP_ORG_Items 0.12-C.3 — Instruções de teste

## Ação automática
Execute no menu de ações:

**SP_ORG_Items 0.12-C.3 — Catalog Real Row Buttons + Gate Hardening 500**

Resultado esperado:

```text
BASE 0.12-C.2 = 494/494
0.12-C.3 = 6/6
FAIL = 0
CUMULATIVO = 500/500
```

Recomendado: duas execuções consecutivas na mesma sessão.

## Smoke manual obrigatório
1. Abra a interface e aguarde o catálogo CONFIG_ALL ficar pronto.
2. Confirme que cada linha visível do Catálogo possui **dois botões reais**, não apenas caracteres desenhados:
   - botão `←` no começo da linha, antes do ícone/nome;
   - botão `→` no fim da linha.
3. Passe o mouse sobre os dois botões e confirme área de hover/click própria, no mesmo vocabulário visual das linhas do Equipment.
4. Clique no `←`: deve adicionar exatamente 1 unidade ao Kit Selecionado/Draft, sem mutação física.
5. Clique no `→`: deve adicionar exatamente 1 unidade ao Destino de Aplicação atual.
6. Clique no ícone/nome: deve apenas selecionar o item. O nome/ícone também continuam origem de DnD.
7. Teste wheel, ▲/▼ e slider do Catálogo. A lista continua sem paginação visível e com `CATALOG_FOCUSED`.
8. Confirme que o Equipment mantém `X/Delete` imediato, sem popup. Quantidade digitada `0` continua pedindo confirmação.
9. Teste troca rápida de kits e confirme que `KIT_SWITCH_FOCUSED`/`fullDelta=0` continuam preservados.

## RPT
Esperado:
- nenhum `[FAIL]` da suíte;
- gate 492 PASS;
- gates 495..500 PASS;
- `CUMULATIVO=500/500`;
- sem `Undefined variable`, `Error in expression`, `Error position`, `Generic error` ou `Unknown entity` originado pelo SP_ORG;
- scroll do Catálogo continua emitindo `mode=CATALOG_FOCUSED` e não `FULL`.
