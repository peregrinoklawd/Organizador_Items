# Teste — SP_ORG_Items 0.12-C

## Automático
Execute **SP_ORG_Items 0.12-C — Catalog Continuous List + Row Actions 488** duas vezes na mesma sessão.

Esperado:
- `BASE 0.12-B = 478/478`
- `0.12-C = 10/10`
- `FAIL = 0`
- `CUMULATIVO = 488/488`

A base 0.12-B só é aceita se os gates legados de Equipment já reconhecerem a superfície `CT_CONTROLS_TABLE` atual.

## Manual
1. Aguarde `Catalog CONFIG_ALL construído` e abra a interface.
2. Confirme que não existem botões de página anterior/próxima no Catálogo.
3. Role o Catálogo com wheel: a experiência deve ser de uma lista única e contínua; o menu vanilla do Arma não deve abrir.
4. Teste ▲ e ▼ na scrollbar própria do Catálogo.
5. Arraste o thumb/slider até posições intermediárias e próximas do fim; confirme que a lista acompanha sem saltar para múltiplos fixos de página.
6. Clique `←` em uma linha do Catálogo: deve adicionar/copy ao Draft, sem mutação física.
7. Clique `→` em uma linha do Catálogo: deve executar ADD físico no **Destino de Aplicação** atual, respeitando ANY/Uniforme/Colete/Mochila e o motor transacional existente.
8. Clique no corpo/nome da linha, fora da rail de setas: deve apenas selecionar e atualizar os detalhes.
9. Confirme que tooltip e descrição inferior mostram somente dados úteis ao jogador (nome, categoria, peso e capacidade quando aplicável), sem `className`/addon técnico.
10. No Equipment, clique `X`: a linha deve ser removida imediatamente, **sem popup de confirmação**.
11. Com foco em uma linha do Equipment, teste Delete: mesma semântica imediata do X.
12. Digite quantidade `0` no Equipment e confirme com Enter: este caminho **ainda deve pedir confirmação**.
13. Valide magazine EXACT: redução preserva estados; crescimento por digitação continua bloqueado; `+` adiciona magazine cheio separado.
14. Observe o RPT ao rolar o Catálogo: esperado `mode=CATALOG_FOCUSED`; não deve haver incremento de FULL por scroll.
15. Troca de kits deve continuar `KIT_SWITCH_FOCUSED` com `fullDelta=0`.
16. Envie RPT e print, especialmente no ultrawide.

## Critério de homologação
A candidata só deve ser promovida após `488/488`, ausência de erro SP_ORG no RPT e validação manual da fluidez da lista contínua.
