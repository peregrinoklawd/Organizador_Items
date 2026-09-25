Entrega: SP_ORG_Items 0.12-D.7.0
Build: 0.12.0.23-d7-0-private-public-library-foundation

Objetivo
- Preparar a interface e o domínio para kits PRIVADOS/PÚBLICOS sem reabrir o motor físico já maduro.

Incluído
- Abas PRIVADOS / PÚBLICOS abaixo da busca de Meus Kits.
- Aba PRIVADOS: comportamento atual preservado (abrir/editar, DnD, Novo, Duplicar, Excluir) + PUBLICAR.
- Aba PÚBLICOS: lista somente leitura com autor/origem, SALVAR NO PRIVADO e ATUALIZAR.
- PUBLICAR cria um snapshot independente do kit privado. Editar o privado não altera o público até publicar novamente.
- Publicar novamente o mesmo kit pelo mesmo autor atualiza o snapshot existente.
- SALVAR NO PRIVADO clona o snapshot público com novo ItemKit ID; nenhuma identidade pública é reutilizada no Repository privado.
- DnD de Meus Kits fica bloqueado na aba PÚBLICOS para evitar edição/aplicação ambígua.

Limite intencional desta fundação
- A biblioteca pública é SESSION-scoped e não é ainda um repositório multiplayer autoritativo/persistente.
- O estado pode ser propagado na sessão, mas concorrência, JIP/persistência de servidor, permissões e moderação pertencem ao próximo marco de governança.

Testes
- Runner D.7.0 adiciona gates 618..627.
- Alvo cumulativo: 627/627.

A execução dentro do Arma 3 continua sendo o gate definitivo.
