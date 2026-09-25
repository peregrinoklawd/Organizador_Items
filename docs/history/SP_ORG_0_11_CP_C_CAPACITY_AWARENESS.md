# Decisões técnicas — CP-C Capacity & Item Awareness

## Unidade de massa/carga
Os valores `mass`, `loadAbs` e `maximumLoad` usados pelo Arma são tratados como uma escala nativa coerente para planejamento/capacidade. A UI usa o sufixo `u`. Esta entrega não declara que `u` equivale a kg.

## Estratégia de performance
O catálogo já cacheia `massEstimate`. A UI reutiliza esse valor e só faz lookup direto do config da classe quando a metadata não conhece a massa. Não há caminhada global de `CfgWeapons`/`CfgMagazines` durante renderização normal.

Os totais do Draft e do Equipment são recalculados quando o respectivo painel realmente precisa atualizar. Não existe polling/per-frame.

## EXACT
Massa é uma propriedade da unidade de item/magazine. A multiplicação usa `quantity`, mas não lê, altera, ordena ou sintetiza `stateData`. Portanto a awareness não modifica a semântica de munição parcial.

## Capacidade
Para U/C/M reais, a capacidade máxima é resolvida a partir da classe do container do equipamento e `maximumLoad`; carga corrente usa o container real. Se não houver valor confiável, a UI apresenta capacidade como não disponível em vez de inventar um número.

## Limites desta checkpoint
A CP-C informa. A edição física detalhada do conteúdo do Equipment, suas setas/quantidades/removals e o hardening do mouse wheel permanecem para CP-D.
