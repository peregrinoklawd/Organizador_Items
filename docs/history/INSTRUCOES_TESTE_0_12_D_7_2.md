# Teste manual — SP_ORG_Items 0.12-D.7.2

1. Execute **SP_ORG_Items 0.12-D.7.2 — Library Hotfix 638**. Esperado: **638/638**.
2. Feche/reabra a missão para começar do cenário mais próximo do jogador real. Abra o Organizador uma única vez.
3. Em **PRIVADOS**, clique em um kit salvo e confirme que **PUBLICAR** fica clicável imediatamente. Não use PÚBLICOS/ATUALIZAR e não espere o Catálogo terminar para validar este ponto.
4. Troque entre dois ou três kits privados. O botão **PUBLICAR** deve continuar acompanhando a seleção sem precisar reabrir a interface.
5. Em **PÚBLICOS**, selecione um kit e clique **SALVAR NO PRIVADO**. Deve aparecer **COPIADO** e deve ser reproduzido o som de confirmação de sucesso. A aba deve permanecer em PÚBLICOS.
6. Em **PRIVADOS**, selecione um kit, clique **EXCLUIR**, confirme e observe o próximo kit destacado. Sem clicar novamente nesse kit, pressione **EXCLUIR** outra vez: a confirmação do segundo kit deve abrir normalmente.
7. Repita o passo anterior excluindo 2–3 kits em sequência. A mensagem `Selecione um kit persistido para excluir` não deve aparecer quando há um kit visivelmente destacado.
8. Quando o kit excluído era o backing do **KIT SELECIONADO**, confirme que o conteúdo aberto é preservado como Rascunho/Novo Kit conforme a regra já existente; a seleção automática da linha seguinte não deve substituir silenciosamente esse Rascunho.
9. Revalide rapidamente DnD, setas, tooltips, aplicação física e capacidade para confirmar ausência de regressão.
