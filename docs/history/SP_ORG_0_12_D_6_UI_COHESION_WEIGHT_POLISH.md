# SP_ORG_Items 0.12-D.6 — UI Cohesion + Vanilla Weight Polish

## Objetivo

Fechar o ciclo de polimento visual iniciado em D.1..D.5 sem reabrir o motor físico. A D.6 reduz ruído visual, melhora hierarquia do Kit Selecionado e do header, simplifica a navegação contínua do Catálogo e traduz a massa técnica para unidades compreensíveis ao jogador.

## Decisões desta candidata

### Catálogo — Opção A

Os botões quadrados de navegação por salto eram redundantes com a barra contínua e a roda do mouse. Eles deixam de ocupar espaço visível. Os controles legados 3121/3123 continuam declarados fora da tela apenas para compatibilidade dos gates históricos, sem função visual para o jogador. O slider 3124 ocupa toda a altura da lista.

### Kit Selecionado

Ações são separadas semanticamente e verticalmente:
- `Onde aplicar o kit?`
- `QUALQUER / UNIFORME / COLETE / MOCHILA`
- `O que fazer no destino?`
- `APLICAR / REMOVER / SUBSTITUIR`

O objetivo é impedir que destino e operação pareçam uma única família de botões.

### Header

Operador, Unidade e Carga passam a formar um cluster compacto à direita. O botão Fechar permanece como âncora extrema. O contexto operacional continua à esquerda, evitando espalhar informação pelo topo inteiro.

### Peso

`u` permanece um detalhe técnico interno. A UI usa `formatUIMass` para mostrar kg e, nas áreas de detalhe, também lb. A conversão não altera `loadAbs`, `mass`, capacidade, planos de aplicação nem fingerprints.

### Runners

O D.5 continha uma expressão textual frágil no gate 574 que podia provocar `Faltante )` durante preprocess/execução. A D.6 divide essa checagem em expressões simples. Gates históricos que congelavam versões/posições D.2..D.5 foram tornados compatíveis com entregas futuras sem remover os contratos funcionais.

O gate histórico `ITEMS-0.8.3-314` agora captura o baseline imediatamente antes dos testes de Enter/Numpad Enter. Isso reduz drift ambiental ocorrido anteriormente no longo segmento, mas a comparação continua exigindo invariância física dentro do intervalo que o gate realmente afirma testar.

## Gate da entrega

- Baseline esperado D.5: 580/580
- Novos gates: 581..590
- Cumulativo esperado: 590/590

A validação local desta entrega é estática. O resultado 590/590 precisa ser confirmado dentro do Arma 3 com o modset real.
