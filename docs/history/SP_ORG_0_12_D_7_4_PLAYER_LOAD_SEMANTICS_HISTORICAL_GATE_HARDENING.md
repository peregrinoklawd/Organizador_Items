# SP_ORG_Items 0.12-D.7.4 — Player Load Semantics & Historical Gate Hardening

## Decisão arquitetural

A D.7.4 não redefine o inventário do Arma e não cria uma nova fórmula de capacidade. Ela explicita duas métricas que já coexistiam no projeto:

1. **Carga global do jogador** — `loadAbs unit` em relação a `maxSoldierLoad` (com `load unit` como fallback de ratio).
2. **Capacidade de container** — `loadAbs container` em relação a `maximumLoad` de Uniforme/Colete/Mochila.

Misturar essas métricas produz uma UI enganosa. A primeira considera o loadout global; a segunda responde à pergunta "quanto cabe neste container?".

## Regra de apresentação

- ratio bruto <= 1: percentual normal;
- ratio bruto > 1: estado explícito `100%+ · SOBRECARGA`;
- a largura da barra usa `min(ratio bruto, 1)` apenas para contenção visual;
- o tooltip mantém o percentual bruto e o excesso para diagnóstico;
- não existe clamp semântico do peso usado nem alteração de loadout.

## Historical Gate Hardening

### C.4 / ITEMS-0.12-502 e 505
O contrato atual do Catálogo é navegação contínua por wheel + slider. Os antigos controles ▲/▼ continuam declarados somente como compatibilidade e ficam fora da viewport. O teste passa a verificar esse contrato em vez de exigir a implementação visual antiga.

### Família D.7.x
Versões intermediárias da família D.7 não podem bloquear uma sucessora apenas por igualdade exata de `DISPLAY_VERSION`. Os runners históricos passam a aceitar o prefixo da família, sem remover seus testes funcionais.

## Regra de segurança da entrega

A D.7.4 não é uma refatoração geral. Diretórios de aplicação física, biblioteca e storage permanecem idênticos à baseline D.7.3 R2. Mudanças de UX ou arquitetura sem relação com os dois objetivos acima ficam fora do escopo.
