# Teste — SP_ORG_Items 0.12-B

## Automático
Execute **SP_ORG_Items 0.12-B — Equipment Row Controls + Capacity UX 478** duas vezes na mesma sessão.
Esperado: `BASE=468/468`, `0.12-B=10/10`, `FAIL=0`, `CUMULATIVO=478/478`.

## Manual
1. Abra Equipment em Uniforme/Colete/Mochila.
2. Confirme linhas separadas com ←, imagem/nome, -, quantidade, + e X.
3. Teste -/+ e quantidade por Enter; 0 e X devem pedir confirmação.
4. Em magazine EXACT, reduzir preserva estados; digitar aumento continua bloqueado; + adiciona magazine cheio separado.
5. Clique ← em uma linha: deve copiar ao Draft sem remover fisicamente.
6. Arraste pelo nome/ícone ao Draft: deve copiar sem remover a origem.
7. Confira barra de capacidade: usado/total/livre e percentual.
8. ATUALIZAR deve permanecer `EQUIPMENT_FOCUSED`, sem FULL.
9. Troca de kits deve continuar `KIT_SWITCH_FOCUSED` com `fullDelta=0`.
10. Envie RPT e print, especialmente em ultrawide.
