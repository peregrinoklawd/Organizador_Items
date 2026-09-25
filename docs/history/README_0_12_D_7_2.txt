Entrega: SP_ORG_Items 0.12-D.7.2
Build: 0.12.0.25-d7-2-library-selection-audio-hotfix

Objetivo
- Fechar inconsistências de estado percebidas pelo jogador na biblioteca PRIVADOS/PÚBLICOS antes de congelar esta camada da interface.

Diagnóstico do botão PUBLICAR
- PUBLICAR não aguarda a construção do Catálogo.
- O botão é habilitado quando existe um kit privado selecionado no estado da UI.
- A seleção de um kit usa KIT_SWITCH_FOCUSED para evitar reconstruir Catálogo/Equipment. Esse refresh focado atualizava o Draft, mas não reavaliava o estado enabled de PUBLICAR.
- Reabrir a interface ou provocar um full refresh reavaliava o botão; por isso o Catálogo parecia ser a causa, mas era apenas um gatilho incidental de refresh.

Alterações
- PUBLICAR passa a ser sincronizado dentro do próprio KIT_SWITCH_FOCUSED e fica clicável imediatamente após o kit privado ser carregado/selecionado.
- SALVAR NO PRIVADO dispara o cue SUCCESS depois de a cópia pública ser persistida com sucesso.
- Após excluir um kit, a interface reconcilia a seleção lógica com o próximo kit visível da lista.
- Essa reconciliação não carrega automaticamente o próximo kit no Rascunho: o conteúdo preservado do kit excluído continua seguro como Rascunho NEW quando aplicável.
- PUBLICAR também acompanha a seleção reconciliada após exclusão.

Testes
- Baseline D.7.1: 633/633.
- D.7.2 adiciona gates 634..638.
- Alvo cumulativo: 638/638.

A execução dentro do Arma 3 continua sendo o gate definitivo.
