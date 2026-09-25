# Teste — SP_ORG_Items 0.12-D.2

## 1. Automático
Execute a ação:

**SP_ORG_Items 0.12-D.2 — Header + Friendly UX 558**

Resultado esperado:
- baseline D.1: `550/550`;
- D.2: `8/8`;
- cumulativo: `558/558`;
- nenhum FAIL em cascata.

## 2. Header / ultrawide
Validar visualmente:
- primeira linha: título à esquerda; Operador e Unidade agrupados; slot futuro e Fechar à direita;
- segunda linha: `Adicionar em` + `Mostrando` à esquerda; Carga + barra à direita;
- nenhuma sobreposição, truncamento importante ou bloco excessivamente espalhado.

## 3. Linguagem player-facing
Confirmar que a interface usa frases como:
- `Onde adicionar os itens` / `Adicionar em`;
- `Mostrar` / `Mostrando`;
- `Arraste itens para adicionar ao kit`;
- `Solte em qualquer lugar deste painel...`;
- resultados como `itens adicionados`, `removidos`, `conteúdo substituído`.

Termos de implementação como `Draft`, `CONTENT`, `BEST_EFFORT`, `STRICT`, `PHYSICAL`, `VIEW` e commandId não devem aparecer na leitura normal do jogador.

## 4. Regressão essencial
Repetir rapidamente:
- Catálogo → Kit Selecionado por DnD;
- Equipment → Kit Selecionado;
- Kit Selecionado → Equipment;
- Meus Kits → Kit Selecionado / Equipment;
- ghost acompanhando o mouse;
- botões `←/→`, `-/+/X`;
- `X/Delete` imediato no Equipment;
- scroll contínuo do Catálogo.

## 5. RPT
Se houver FAIL, enviar o RPT completo. Procurar especialmente:
- `[TEST 0.12-D.2]`;
- `[TEST_AMBIENT_DRIFT]`;
- `[DND]` e `[DND_GHOST]`;
- `LOADOUT DIFF`.
