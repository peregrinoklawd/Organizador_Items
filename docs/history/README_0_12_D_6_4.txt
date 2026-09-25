Entrega: SP_ORG_Items 0.12-D.6.4
Build: 0.12.0.22-d6-4-auto-draft-arrow-parity

Mudanças desta candidata:
- Corrige o primeiro FAIL real do RPT atual: gate histórico ITEMS-0.12-510 ainda procurava “Draft atual”, enquanto a interface já usa “Rascunho atual”.
- Mantém o Auto-Rascunho por drag-and-drop aprovado na D.6.3.
- Adiciona a mesma conveniência à seta ← do Catálogo: sem Rascunho aberto, cria “Novo Kit” em memória e adiciona o item.
- Adiciona a mesma conveniência à seta ← do Conteúdo do Equipamento, sem remover o item físico de origem.
- Seleção, busca e chamadas lógicas neutras continuam sem criar Rascunho automaticamente.
- Auto-criação continua transacional: se a transferência falhar, o estado anterior é restaurado.
- Novo runner D.6.4: gates 611..617; alvo cumulativo 617/617.

A execução dentro do Arma 3 continua sendo o gate definitivo.
