# SP_ORG_Items 0.12-C.6 — Instruções de teste

## Gate automático
Execute **SP_ORG_Items 0.12-C.6 — Panel-Wide Drop Targets + DnD Restoration 524**.

Esperado:

```text
BASE 0.12-C.5 = 514/514
0.12-C.6 = 10/10
FAIL = 0
CUMULATIVO = 524/524
```

Recomendação: execute duas vezes consecutivas na mesma sessão após o catálogo CONFIG_ALL estar pronto.

## DnD lógico para Kit Selecionado
Com um Draft/kit aberto:

- arraste **nome ou ícone** de um item do Catálogo e solte em uma área vazia, sobre uma linha ou em outro ponto qualquer dentro do painel **Kit Selecionado**;
- espere +1 unidade no Draft;
- arraste **nome ou ícone** de uma linha do Equipment para qualquer ponto do Kit Selecionado;
- espere cópia lógica da quantidade/estado da linha, sem remoção física do Equipment;
- arraste um kit em **Meus Kits** para qualquer ponto do Kit Selecionado;
- espere merge/cópia do kit, sem alteração do kit fonte.

A faixa `ARRASTE ITENS PARA CÁ` é apenas indicação visual; não é mais o único alvo.

## DnD físico para Conteúdo do Equipamento
Com Application Target válido:

- arraste um item do Catálogo para qualquer ponto do painel **Conteúdo do Equipamento**: deve fazer ADD físico de 1 unidade;
- arraste um kit de Meus Kits para qualquer ponto do Equipment: deve aplicar o kit usando o Application Target;
- arraste uma linha do Draft pelo nome/ícone para qualquer ponto do Equipment: deve aplicar fisicamente aquela **ItemEntry**, não o Draft inteiro.

A faixa física é apenas indicação visual; não é mais o único alvo.

## Matriz deliberadamente bloqueada
- Equipment → Equipment não é redirecionado para outro container por DnD;
- linha Draft → Draft não é um gesto de cópia;
- Catálogo/Meus Kits não são destinos de drop.

Soltar fonte incompatível ou fora dos painéis deve cancelar sem mutação.

## Botões não são alças de drag
Teste que `←`, `→`, `-`, `+`, `X` e o campo de quantidade continuam executando somente suas ações próprias. O drag deve começar pelo **nome ou ícone**.

## EXACT e remoção rápida
- Equipment `X`/Delete continua removendo imediatamente, sem confirmação;
- quantidade digitada `0` mantém o fluxo de confirmação já contratado;
- magazines EXACT devem preservar `stateData` nos caminhos de captura/cópia.

## RPT
Durante drag real, procure por:

```text
[SP_ORG] [ITEMS] [DND] START ...
[SP_ORG] [ITEMS] [DND] HOVER ...
[SP_ORG] [ITEMS] [DND] DROP ...
```

`HOVER` só deve ser registrado quando o cursor muda de painel, evitando flood.

Para um drop lógico válido, espere `destination=DRAFT`. Para aplicação física, `destination=PHYSICAL`.
