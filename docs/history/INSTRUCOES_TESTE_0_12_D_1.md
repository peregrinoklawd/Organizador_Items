# SP_ORG_Items 0.12-D.1 — Instruções de teste

## Automático
No laboratório, execute a ação:

`SP_ORG_Items 0.12-D.1 — Header + UX Polish 550`

Resultado esperado:
- baseline C.8.1: `542/542`;
- D.1: `8/8`;
- cumulativo: `550/550`;
- `FAIL=0`.

Se a baseline falhar, a D.1 deve parar em fail-fast. Não considerar verde um runner que não tenha executado a cadeia herdada.

## Manual — Header e leitura
1. Abrir a interface em resolução ultrawide usada normalmente.
2. Confirmar que título, status central, Operador, Unidade, Carga, barra, slot futuro e Fechar não se sobrepõem.
3. Confirmar que Operador e Unidade aparecem em campos independentes.
4. Alternar Destino de aplicação entre Qualquer/Uniforme/Colete/Mochila e Visualizar entre Uniforme/Colete/Mochila.
5. Confirmar que o status usa nomes completos e não mostra `PHYSICAL`, `VIEW`, `U`, `C` ou `M` como linguagem principal.
6. Confirmar que a barra de carga continua coerente com o valor numérico/percentual.
7. Conferir alinhamento dos títulos e buscas dos quatro painéis.
8. Conferir footer: Contexto e Resultado prioritários; Histórico visualmente secundário.

## Manual — Regressão funcional obrigatória
A D.1 é construída sobre C.8.1, que ainda precisava de validação humana completa. Portanto repetir:

1. Catálogo → Kit Selecionado por DnD, soltando em diferentes áreas do painel.
2. Equipment → Kit Selecionado por DnD.
3. Linha do Kit Selecionado → Equipment por DnD.
4. Meus Kits → Kit Selecionado e → Equipment.
5. Confirmar que o ghost (ícone + nome) acompanha o cursor durante o arraste.
6. Confirmar que botões `←`, `→`, `-`, quantidade, `+` e `X` não iniciam drag por engano.
7. Confirmar `X/Delete` imediato no Equipment.
8. Confirmar que o botão esquerdo do Catálogo adiciona ao Kit e o direito aplica fisicamente.
9. Confirmar que scroll contínuo do Catálogo permanece focal e fluido.

## RPT
Esperado ao final:

`0.12-D.1 — BASE=542/542 D.1=8/8 FAIL=0 CUMULATIVO=550/550`

Para DnD/ghost, procurar sequência `START`, `DND_GHOST CREATE`, `MOVE_FIRST`, `HOVER`, `DROP` e `HIDE` durante o teste manual.
