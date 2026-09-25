# Teste manual — SP_ORG_Items 0.12-D.6.4

## 1. Gate automático
Execute a ação de testes **0.12-D.6.4**. Esperado: **617/617**.

Se houver falha, envie o RPT a partir do primeiro `[FAIL]`; os `FAIL-FAST` seguintes são consequência.

## 2. Seta do Catálogo cria Rascunho
1. Abra a interface sem kit/Rascunho aberto.
2. Não clique em `NOVO`.
3. Clique na seta **←** de qualquer item do `CATÁLOGO DE ITENS`.
4. Deve nascer automaticamente um novo Rascunho em `KIT SELECIONADO`.
5. O item deve ser adicionado no mesmo gesto.

## 3. Seta do Conteúdo do Equipamento cria Rascunho
1. Descarte o Rascunho anterior para voltar ao estado vazio.
2. Em `CONTEÚDO DO EQUIPAMENTO`, clique **←** em um item.
3. Deve nascer novo Rascunho e o item deve ser copiado para ele.
4. O item físico deve continuar no equipamento; esta seta é cópia lógica.

## 4. DnD permanece
Repita Catálogo/Equipment/Meus Kits por arraste para `KIT SELECIONADO` vazio. O comportamento aprovado na D.6.3 deve permanecer.

## 5. Não criar Rascunho por ações neutras
Abrir a interface, selecionar linhas, pesquisar, trocar `Mostrar` ou `Onde aplicar o kit?` não deve criar Rascunho.

## 6. Regressões críticas
Valide rapidamente header ancorado no Fechar, DnD físico obedecendo `Mostrar`, tooltips, ghost, wheel guard, pesos, capacidade, +/−/quantidade/X e Salvar/Descartar/Limpar.
