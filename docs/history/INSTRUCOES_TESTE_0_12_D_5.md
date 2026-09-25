# SP_ORG_Items 0.12-D.5 — Instruções de teste

## Automático
1. Executar a action **SP_ORG_Items 0.12-D.5 — Drag Tooltip + Header/Label Hotfix 580**.
2. Esperado: **580/580**.
3. Se falhar, olhar o primeiro FAIL no RPT.

## Manual prioritário
1. Abrir a interface.
2. Arrastar um item do Catálogo ou do Kit Selecionado.
3. Passar por cima de outro item durante o arraste.
4. Esperado: **nenhum tooltip intrusivo aparece durante o drag**.
5. Soltar/cancelar o drag e validar que o tooltip volta a funcionar no hover normal.
6. Conferir a legenda **O que deseja fazer?** e verificar se está com leitura equivalente a **Onde aplicar o kit?**.
7. Revisar o topo (Operador / Unidade / Carga / barra) e confirmar melhora do alinhamento.
