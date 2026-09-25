# SP_ORG_Items 0.11 CP-B — Sound & Outcome Feedback

## Contrato de outcome

Toda operação apresentada pela UI pode ser reduzida a um outcome estável:

- `SUCCESS`: operação concluída integralmente.
- `PARTIAL`: BEST_EFFORT concluiu parte do pedido e rejeitou parte.
- `BLOCKED`: a tentativa foi recusada antes da mutação (engine ocupado, target indisponível, operação/origem inválida etc.).
- `FAILURE`: houve falha efetiva sem rollback comprovado como outcome principal.
- `ROLLBACK`: a operação falhou, porém o snapshot focal foi restaurado e comprovado.
- `ROLLBACK_FAILED`: estado crítico; usa severidade ERROR e o cue de falha.

## Feedback visual

`fn_classifyUIOutcome.sqf` gera uma mensagem consistente com:

- operação (`APLICAR`, `REMOVER`, `SUBSTITUIR`, `LIMPAR`);
- target resolvido;
- quantidade efetivamente aplicada/removida;
- número de entradas rejeitadas;
- número de ações físicas;
- `commandId` para correlação com `PHYSICAL_FLOW PRE/POST`.

PARTIAL deixa de parecer sucesso completo: usa `WARN` e informa rejeições.
Rollback comprovado informa explicitamente que o estado focal foi restaurado.
Rollback não comprovado é apresentado como condição crítica.

## Feedback sonoro

Os sons são arquivos pequenos e locais da própria missão, sem dependência de mods:

| Outcome | Cue |
|---|---|
| SUCCESS | dois tons ascendentes curtos |
| PARTIAL | dois tons neutros/descendentes leves |
| BLOCKED | pulso baixo curto |
| FAILURE | dois tons baixos descendentes |
| ROLLBACK | sequência curta de recuperação |

`fn_playUIFeedbackSound.sqf` registra também `soundHistory`, `lastSoundOutcome` e `lastSoundClass` para diagnóstico.

Durante a suíte automática, `TEST_ORCHESTRATOR.running=true` suprime apenas a reprodução real; o mapeamento e o histórico continuam sendo validados.

## Regra de silêncio

Não há cue sonoro para:

- selecionar kit/item/linha;
- mudar `applicationTarget`;
- mudar `equipmentView`;
- navegar/paginar catálogo;
- refresh/recapture puro.

O som representa uma **tentativa explícita de operação**, não navegação.

## Logs

Além de `PHYSICAL_FLOW PRE/POST`, a CP-B registra:

`[SP_ORG] [ITEMS] [UX_SOUND] outcome=... class=... available=... enabled=... played=... suppressedTests=...`

Isso permite distinguir no RPT se o outcome foi classificado, se a classe existia e se o som foi realmente reproduzido ou intencionalmente suprimido.
