# SP_ORG_Items 0.12-D.6.1

## Por que existe
O RPT da D.6 mostrou duas falhas históricas (408 e 411) apesar do fluxo atual estar funcional. A causa era o teste depender de frases antigas removidas pelo polish player-facing.

## Correção
- 408 valida outcome, severity, sound, appliedQty, actionCount, operation, target e commandId; a mensagem precisa apenas refletir a quantidade de forma amigável.
- 411 valida estado/cue/severidade/rollbackSucceeded/commandId e deixa de procurar a frase antiga `estado focal restaurado`.
- o texto de capacidade cresce modestamente sem mover os botões.

## Escopo congelado
Nenhuma mudança em Application Engine, Storage, EXACT, Whole-Kit, DnD, catálogo ou regra de capacidade.

## Gate
594/594 + smoke manual de legibilidade da capacidade.
