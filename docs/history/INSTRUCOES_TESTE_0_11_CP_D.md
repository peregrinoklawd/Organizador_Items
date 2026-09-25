# Teste — SP_ORG_Items 0.11 CP-D

## 1. Automático
Execute a ação:

`SP_ORG_Items 0.11 CP-D — Movement Controls + Interaction Polish 460`

Esperado ao final:

- `BASE=450/450`
- `CP-D=10/10`
- `FAIL=0`
- `CUMULATIVO=460/460`

Execute duas vezes consecutivas na mesma sessão.

No RPT, confirme também que não existe flood `Unknown entity` originado pelos textos da CP-C/CP-D.

## 2. Wheel / menu vanilla
Com a interface aberta:

1. Coloque o mouse sobre Meus Kits, Draft, Catálogo e Equipment e use a roda do mouse.
2. Os painéis roláveis devem rolar normalmente.
3. O menu de ações vanilla do Arma não deve abrir enquanto o display SP_ORG estiver ativo.
4. Feche a interface e confirme que o comportamento normal do jogo volta sem efeito residual.

## 3. Seta de Kit -> Draft
1. Abra um Draft/kit A.
2. Em Meus Kits, clique na seta à direita de um kit B.
3. O conteúdo de B deve ser combinado no Draft A.
4. A seleção pela seta não deve substituir o Draft A por B.
5. Clicar no corpo da linha continua abrindo B para edição normalmente.

## 4. Controles físicos do Equipment
Escolha U, C ou M em `Visualizar` e selecione uma linha física.

Valide:
- `-` remove exatamente uma unidade da linha no VIEW atual;
- `+` adiciona exatamente uma unidade;
- digitar nova quantidade e pressionar Enter aplica somente a diferença;
- Numpad Enter possui a mesma semântica;
- quantidade `0` pede confirmação e remove a linha somente após confirmar;
- `X` e tecla Delete pedem confirmação antes da remoção total;
- cancelar a confirmação não altera inventário.

Troque o `Destino de aplicação` para um valor diferente do VIEW e repita: os controles da linha devem continuar operando no VIEW visualizado.

## 5. Magazine EXACT
Em uma linha EXACT:
- diminuir quantidade remove estados reais existentes;
- aumentar a quantidade digitada deve ser bloqueado, pois não existe stateData novo explícito;
- `+` adiciona um magazine cheio separado (`DEFAULT_FULL`) e não altera/fabrica os estados EXACT existentes.

## 6. Refresh e performance
- `ATUALIZAR` deve registrar `mode=EQUIPMENT_FOCUSED`, sem FULL.
- Troca de kits deve continuar `KIT_SWITCH_FOCUSED` com `fullDelta=0`.
- Catálogo/filtros continuam `CATALOG_FOCUSED`.
- Movimentação para Draft continua `DRAFT_FOCUSED`.

## 7. Ultrawide
Confirme visualmente que `- / quantidade / + / X` não se sobrepõem e que busca, lista, botões Atualizar/Capturar/Limpar e status permanecem legíveis.

Envie o RPT e, se houver qualquer comportamento visual estranho, um print da interface.
