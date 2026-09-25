# SP_ORG_Items 0.12-C.8.1 — teste

Execute a ação **SP_ORG_Items 0.12-C.8.1 — Runtime Drag Ghost Fix 542**.

Resultado automático esperado: **542/542**.

## Smoke manual obrigatório

Repita os fluxos de DnD aprovados na C.7:

- Catálogo → Kit Selecionado;
- Equipment → Kit Selecionado;
- Draft → Conteúdo do Equipamento;
- Meus Kits → Kit Selecionado;
- Meus Kits → Conteúdo do Equipamento.

Durante cada drag, após ultrapassar o pequeno limiar de movimento, deve aparecer um proxy compacto com **ícone + nome** acompanhando o cursor. O proxy não pode bloquear o painel de destino.

Confirme também:

- clique sem mover continua sendo clique;
- `←`, `→`, `-`, quantidade, `+` e `X` não iniciam drag;
- soltar fora cancela sem mutação;
- o ghost desaparece imediatamente em DROP/CANCEL/fechamento;
- o drop continua válido em qualquer área compatível do painel.

## RPT

Para um gesto humano procure, nesta ordem:

`[DND] START`

`[DND_GHOST] CREATE`

`[DND_GHOST] MOVE_FIRST`

`[DND] HOVER`

`[DND] DROP`

`[DND_GHOST] HIDE`

A telemetria do ghost não deve ocorrer em todo frame; `MOVE_FIRST` é registrado apenas uma vez por gesto.
