# 0.12-C — Catalog Continuous List + Row Actions

## Objetivo
Recuperar a experiência de catálogo único da interface anterior sem reintroduzir o custo de materializar milhares de itens de uma vez.

## Arquitetura da lista contínua
A paginação deixa de existir como conceito visível para o jogador. Internamente, `catalogOffset` continua apontando para uma janela virtual de tamanho limitado (`SERVO_PEREGRINO_ORGANIZADOR_ITEMS_UI_CATALOG_WINDOW_SIZE`, atualmente 120).

Wheel, setas ▲/▼ e slider vertical alteram o offset global e chamam somente `CATALOG_FOCUSED`. O offset pode assumir qualquer posição válida; não é mais arredondado para múltiplos do tamanho da antiga página.

O `getUICatalogWindow` usa a projeção cacheada do CONFIG_ALL. O caminho sem busca seleciona diretamente a fatia necessária. Com busca, somente os índices da categoria são varridos para localizar os matches e apenas a janela visível é copiada defensivamente.

## Ações por linha
Cada linha do Catálogo apresenta duas affordances na rail direita:
- `←` — adiciona logicamente ao Draft/Kit Selecionado;
- `→` — ADD físico usando o Destino de Aplicação atual.

Ambas convergem para `executeUITransferCommand`; não existe motor paralelo de mutação.

## Informação para jogador
Tooltip e painel inferior foram reduzidos a nome, categoria amigável, massa/carga e capacidade de magazine quando relevante. Classe técnica e addon não são exibidos nessa superfície.

## Performance
O FULL remanescente passa a consumir `getUICatalogWindow` e deixa de chamar `filterCatalog`, evitando reconstruir uma coleção filtrada completa apenas para desenhar uma janela.

## Equipment — exclusão imediata
A pedido de UX, `X` e Delete removem imediatamente a linha selecionada do Equipment. O comando continua usando o executor físico transacional existente. Digitar quantidade `0` permanece destrutivo com confirmação explícita.

## Regressão histórica
Os gates legados 271, 289, 300 e 301 foram modernizados para validar a arquitetura visual atual:
- Equipment visível em CT_CONTROLS_TABLE;
- drag/arrow/tooltip nos controles reais da linha;
- catálogo aceita rail dual `←`/`→`.
Os IDs históricos foram preservados.
