# SP_ORG_Items 0.13-A — Testes

## Automático
Execute **SP_ORG_Items 0.13-A — Server Authority Foundation**.
Esperado para o checkpoint novo: **10/10**, gates **655..664**.

A suíte 0.12 cumulativa não é reexecutada por este botão porque os gates históricos 516/523 permanecem dívida técnica aceita pela homologação manual da 0.12 FINAL.

## Smoke manual single-player
1. Abra a interface.
2. Confirme PRIVADOS/PÚBLICOS, PUBLICAR e SALVAR NO PRIVADO.
3. Publique um kit e confirme PUBLICADO.
4. Confirme DnD/ghost, ←/→, Equipment, Whole-Kit/EXACT, áudio e carga como na 0.12 FINAL.

## Smoke manual multiplayer — principal desta entrega
Use host + pelo menos um cliente real.
1. No cliente, crie/salve um kit PRIVADO.
2. Clique PUBLICAR. O estado pode mostrar **ENVIADO** enquanto aguarda o servidor e depois **PUBLICADO**.
3. Abra PÚBLICOS no host e no cliente; ambos devem enxergar o mesmo snapshot/revisão após atualização.
4. Republique o mesmo kit pelo mesmo cliente: deve atualizar o mesmo snapshot, sem duplicata.
5. Edite o privado depois de publicar: o público não muda até nova publicação.
6. SALVAR NO PRIVADO a partir do público continua criando um novo ItemKit local independente.
7. Confirme que o nome/autor público vem do jogador real no servidor, não de texto enviado pelo cliente.

## Limites intencionais
- Um jogador que entra depois (JIP) ainda não é critério deste checkpoint.
- Persistência após restart/mudança de missão ainda não é critério.
- ACL/moderação/rate-limit ainda não são critérios.
