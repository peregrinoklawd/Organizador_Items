Entrega: SP_ORG_Items 0.12-D.6.3
Build: 0.12.0.21-d6-3-auto-draft-header-anchor

Esta entrega parte da 0.12-D.6.2 e preserva a autoridade separada entre:
- Onde aplicar o kit? -> operações físicas do Rascunho/kit.
- Mostrar -> Conteúdo do Equipamento e DnD físico para o equipamento exibido.

Mudanças desta candidata:
- Auto-Rascunho por drag-and-drop quando Kit Selecionado está vazio.
- Rollback do Rascunho automático se a transferência não puder ser concluída.
- Header reorganizado como bloco ancorado pela direita para reduzir dispersão visual em ultrawide.
- Correção do gate legado 484, que ainda procurava uma copy antiga e interrompia toda a cadeia por fail-fast.
- Novo runner D.6.3: gates 603..610; alvo cumulativo 610/610.

A execução no Arma 3 continua sendo o gate definitivo de homologação. A validação fora do engine cobre estrutura, contratos estáticos e integridade do pacote.
