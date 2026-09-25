# 0.12-C.2 — Runner Completion + Catalog Arrow Parity

Esta candidata fecha a incompatibilidade residual dos gates históricos com a lista contínua 0.12-C e separa as duas ações do Catálogo nas laterais da linha.

A implementação evita migrar o Catálogo para milhares de controles por linha: permanece CT_LISTBOX com janela virtual de 120 entradas, preservando a performance medida de CATALOG_FOCUSED.

Semântica visual:
- `←` no início da linha: cópia lógica Catalog -> Draft.
- corpo/ícone: seleção pura.
- `→` no fim: ADD físico ao applicationTarget.

Os gates 244/296/351/358 mantêm seus IDs e foram atualizados apenas para refletir a arquitetura corrente. Novos gates: 489..494.
