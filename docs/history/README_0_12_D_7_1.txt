Entrega: SP_ORG_Items 0.12-D.7.1
Build: 0.12.0.24-d7-1-private-public-library-ux-close

Objetivo
- Fechar o primeiro ciclo UX da biblioteca PRIVADOS/PÚBLICOS antes do próximo marco de autoridade multiplayer.

Alterações
- Header: Carga agora mostra somente <usado> / <total> kg - <percentual>%.
- SALVAR NO PRIVADO cria o nome "Cópia <nome público>" com novo ItemKit ID e origem PUBLIC_COPY.
- Depois de copiar um kit público, a interface permanece na aba PÚBLICOS e preserva busca/seleção.
- MEUS KITS exibe COPIADO após cópia pública -> privada e PUBLICADO após publicar/atualizar um privado.
- O comportamento privado/público da D.7.0 permanece inalterado fora desses ajustes.

Testes
- Baseline D.7.0: 627/627.
- D.7.1 adiciona gates 628..633.
- Alvo cumulativo: 633/633.

A execução dentro do Arma 3 continua sendo o gate definitivo.
