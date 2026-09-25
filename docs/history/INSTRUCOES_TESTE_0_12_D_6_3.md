# Teste manual — SP_ORG_Items 0.12-D.6.3

## 1. Gate automático

Ao iniciar a missão, execute a ação de testes da **0.12-D.6.3**.

Resultado esperado: **610/610**.

Se houver falha, envie o RPT a partir do primeiro `[FAIL]`; os `FAIL-FAST` posteriores normalmente são consequência desse primeiro gate.

## 2. Auto-Rascunho — Catálogo

1. Abra a interface sem selecionar kit e sem clicar em `NOVO`.
2. Confirme que `KIT SELECIONADO` está sem Rascunho aberto.
3. Arraste um item do `CATÁLOGO DE ITENS` e solte em qualquer área válida do painel `KIT SELECIONADO`.
4. Deve ser criado automaticamente um novo Rascunho e o item deve aparecer nele no mesmo gesto.
5. O feedback deve indicar que um novo Rascunho foi criado e o item foi adicionado.

## 3. Auto-Rascunho — Meus Kits

1. Descarte/feche o Rascunho do teste anterior, deixando `KIT SELECIONADO` vazio novamente.
2. Arraste um kit salvo de `MEUS KITS DE ITENS` para `KIT SELECIONADO`.
3. Deve nascer um novo Rascunho com o conteúdo do kit mesclado.
4. O kit salvo de origem deve permanecer intacto em `MEUS KITS DE ITENS`.

## 4. Auto-Rascunho — item do equipamento

1. Deixe novamente `KIT SELECIONADO` sem Rascunho.
2. Arraste um item de `CONTEÚDO DO EQUIPAMENTO` para `KIT SELECIONADO`.
3. Deve ser criado um novo Rascunho e o item deve ser copiado para ele sem remover o item físico do equipamento.

## 5. Limite intencional

Com nenhum Rascunho aberto, use a seta/botão do Catálogo para enviar item ao Kit Selecionado.

Resultado esperado: a ação continua pedindo que um kit seja criado/selecionado. **Somente o drag-and-drop cria Rascunho implicitamente.** Isso evita efeitos surpresa em cliques comuns.

## 6. Header

Valide especialmente em ultrawide:

- `Carga` e a barra devem formar um único bloco alinhado.
- À direita da Carga ficam `Operador` e `Unidade`, empilhados.
- Depois vem o slot reservado e, por último, o `X` de fechar.
- O conjunto deve parecer ancorado à borda direita, sem os grandes vazios/desalinhamentos da D.6.2.
- O título permanece ancorado à esquerda.

## 7. Regressão crítica da D.6.2

Repita o cenário de autoridade do Equipment:

1. `Onde aplicar o kit? = UNIFORME`.
2. `Mostrar = COLETE`.
3. Arraste item do Catálogo para `CONTEÚDO DO EQUIPAMENTO`.
4. O item deve ir para o **COLETE**.
5. Repita U/C/M invertendo as seleções.

Também valide DnD, ghost, tooltip, wheel guard, +/−, quantidade, X imediato, Salvar, Salvar como novo, Descartar e Limpar.
