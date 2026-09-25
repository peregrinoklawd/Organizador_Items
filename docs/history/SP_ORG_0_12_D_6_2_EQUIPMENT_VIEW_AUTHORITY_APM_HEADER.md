# SP_ORG Items 0.12-D.6.2

## Equipment View Authority + APM Header Convergence

Esta entrega fecha um erro semântico importante: **o painel Conteúdo do Equipamento passa a ser autoridade do próprio destino físico**.

### Contratos de destino

- `applicationTarget` continua pertencendo ao fluxo **Onde aplicar o kit?** e às operações de aplicação do Kit Selecionado.
- `equipmentView` pertence ao painel **Conteúdo do Equipamento / Mostrar**.
- Todo drop físico sobre o painel de Equipment deve resolver U/C/M a partir de `equipmentView`.
- A prontidão visual e funcional do Equipment também é mantida separadamente por `equipmentViewCommandEnabled`.

Isso impede o caso incorreto em que `Onde aplicar o kit? = Uniforme` desviava um drop feito sobre `Mostrar = Colete` para o uniforme.

## UI

O header foi aproximado da disciplina visual usada no APM: carga, identidade do operador/unidade, slot futuro e fechar formam um bloco coerente ancorado à direita. A informação `Adicionar em` deixa de aparecer no header e continua disponível onde é funcionalmente relevante.

A carga passa a usar o padrão:

`Carga: usado / total kg (usado lb) - percentual%`

O botão visual `Qualquer` é ocultado, mas o alvo `ANY` continua disponível internamente para preservar compatibilidade. Os botões Uniforme, Colete e Mochila foram redistribuídos.

Em Conteúdo do Equipamento, `Capacidade`, barra e massa em kg passam a ocupar uma linha única. Informações detalhadas de usado/livre/percentual permanecem no tooltip.

## Linguagem

A interface tratada nesta entrega usa `Rascunho` em vez de `Draft` para os textos voltados ao jogador, sem renomear os identificadores técnicos internos.

## Testes

Novo checkpoint: `0.12-D.6.2`, gates **595 a 602**, total cumulativo esperado **602/602**.

Também foram endurecidos gates históricos que estavam falhando por dependência de comentários/frases antigas e por comparação excessivamente rígida de fingerprint do loadout em um ambiente com mods.

## Limite da validação

Foram feitos checks estáticos de estrutura, balanceamento de delimitadores, registro de funções, versão, macros e evidências de autoridade de destino. A execução real do Arma 3 continua sendo o gate final de homologação.
