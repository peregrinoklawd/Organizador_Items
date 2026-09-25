# Teste — SP_ORG_Items 0.11 CP-B

## 1. Suíte automática

Execute:

`SP_ORG_Items 0.11 CP-B — Sound + Outcome 414`

Esperado:

`BASE=406/406  CP-B=8/8  FAIL=0  CUMULATIVO=414/414`

Execute uma segunda vez na mesma sessão. O segundo resultado também deve ser 414/414.

## 2. Ouvir os cues isoladamente

Execute:

`SP_ORG_Items 0.11 CP-B — Ouvir sons`

A sequência é:

1. SUCCESS
2. PARTIAL
3. BLOCKED
4. FAILURE
5. ROLLBACK

Os sons devem ser discretos e distinguíveis, sem volume agressivo.

## 3. Operação real

Crie/abra um Draft e teste:

- APLICAR: sucesso deve gerar mensagem com target, qtd, rejeições, ações e cmd + cue SUCCESS.
- REMOVER: idem.
- SUBSTITUIR: sucesso deve usar SUCCESS; eventual rollback deve indicar restauração focal.
- LIMPAR Equipment: sucesso deve usar SUCCESS.
- operação bloqueada (por exemplo target sem container): deve mostrar motivo + cue BLOCKED.
- BEST_EFFORT parcial, se reproduzível: deve mostrar PARTIAL/rejeições + cue PARTIAL.

## 4. Silêncio de navegação

Confirme que NÃO há som ao:

- trocar U/C/M/ANY em Destino de Aplicação;
- trocar U/C/M em Visualizar;
- selecionar itens no Catálogo;
- selecionar kit;
- usar REFRESH/recapture sem mutação.

## 5. RPT

Procure:

- `[PHYSICAL_FLOW] PRE`
- `[PHYSICAL_FLOW] POST`
- `[UX_SOUND]`

Envie o RPT se houver qualquer diferença entre a mensagem, o som e a mutação observada.
