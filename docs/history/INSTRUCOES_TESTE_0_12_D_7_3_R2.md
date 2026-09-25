# SP_ORG_Items 0.12-D.7.3 R2 — roteiro de validação

## Automático
1. Abrir a missão R2.
2. Executar a suíte cumulativa normal.
3. Confirmar no RPT:
   - ausência de `Error in expression`/`Error Faltante` referente ao runner D.7.3;
   - `ITEMS-0.12-483` PASS;
   - `ITEMS-0.12-484` PASS;
   - `ITEMS-0.12-604` PASS;
   - `ITEMS-0.12-639` até `ITEMS-0.12-646` PASS;
   - resumo final D.7.3 com `646/646`.

## Manual
As funções da D.7.3 já passaram no teste manual informado pelo usuário. Como R2 não altera runtime funcional, basta um smoke curto:
- `Onde aplicar` diferente de `Mostrar` e botão direito do Catálogo deve obedecer `Mostrar`;
- PUBLICAR deve tocar confirmação;
- COPIADO/PUBLICADO deve desaparecer na interação seguinte;
- filtro MÉDICO deve continuar ordenado/pesquisável.
