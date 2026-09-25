# SP_ORG_Items 0.12-C.3 — Catalog Real Row Buttons + Gate Hardening

## Objetivo
Corrigir o último falso FAIL da 0.12-C.2 e atingir a paridade visual pedida para as ações por linha do Catálogo: **botões reais**, semelhantes aos controles por linha do Equipment/APM, em vez de simples setas textuais embutidas no ListBox.

## Alteração visual
A superfície visível do Catálogo passa a ser uma `CT_CONTROLS_TABLE` (`IDC 3140`). Cada linha virtualizada materializa cinco controles:

1. fundo;
2. botão real `←` para Draft;
3. picture;
4. nome/peso;
5. botão real `→` para aplicação física.

Os botões reutilizam a família visual dos controles do Equipment. O botão físico mantém uma diferenciação cromática discreta para deixar claro que sua ação altera inventário.

## Semântica
- `←`: `CATALOG -> DRAFT`, uma unidade, operação lógica.
- `→`: `CATALOG -> PHYSICAL`, uma unidade, usando o Application Target corrente.
- nome/ícone: seleção pura; também podem iniciar DnD com payload congelado.
- Equipment `X/Delete`: permanece imediato.
- quantidade física digitada `0`: permanece com confirmação.

## Performance
A lista continua conceitualmente contínua e sem paginação visível, mas não cria milhares de controles. A janela virtual foi ajustada para **32 itens materializados por refresh**, suficiente para cobrir a viewport com margem e limitar o custo de uma linha que agora possui cinco controles reais.

`getUICatalogWindow` continua fazendo defensive copy somente da janela. `CATALOG_FOCUSED` continua sendo o caminho normal de busca/filtro/scroll. `filterCatalog` não volta aos refreshes normais.

O `ListBox 3120` permanece fora da tela somente como superfície de compatibilidade para regressões históricas enquanto a suíte antiga ainda existe; ele não é a interface entregue ao jogador.

## Gates
A C.3 herda 494/494 da C.2 e acrescenta:
- 495 — superfície visível CT_CONTROLS_TABLE e legado oculto;
- 496 — dois Button controls reais da mesma família do Equipment;
- 497 — dispatch central e seleção pura;
- 498 — DnD moderno com snapshot congelado;
- 499 — virtualização/performance preservadas;
- 500 — smoke runtime dos botões reais e invariância loadout/storage.

Alvo: **500/500**.
