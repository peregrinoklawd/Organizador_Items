# Multiplayer e autoridade — 0.13-A

## Objetivo

Mover a mutação de PÚBLICOS para autoridade do servidor sem reabrir motor físico, Repository privado ou UX D.7.x.

## Fluxo cliente

```text
PUBLICAR
 -> validate ItemKit
 -> requestId / pending=SENT
 -> remoteExecCall serverHandlePublicLibraryRequest, target 2
 -> UI pode mostrar ENVIADO
```

## Fluxo servidor

```text
serverHandlePublicLibraryRequest
 -> exige isServer + isRemoteExecuted
 -> lê remoteExecutedOwner
 -> associa owner a allPlayers
 -> deriva name + UID
 -> commitPublicKitSnapshotServer
 -> incrementa revision e publicVariable via missionNamespace setVariable(..., true)
 -> callback ao owner do cliente
```

## Fluxo callback

`clientReceivePublicLibraryResult` fecha o pending e atualiza feedback. Em MP remoto, deve rejeitar callback que não venha do owner 2 (servidor).

## O que 0.13-A protege

- cliente não escolhe livremente identidade pública do autor;
- cliente não recebe acesso ao Repository privado;
- mutação pública acontece no servidor;
- CfgRemoteExec expõe endpoints mínimos.

## O que 0.13-A ainda NÃO resolve

- bootstrap/reconciliation JIP explícito;
- detecção/recovery de state stale após perda de atualização;
- persistência após restart;
- ACL/moderação/delete server-side;
- rate limit, timeout, retry e anti-spam;
- conflitos avançados/locks entre autores.

Esses itens pertencem a 0.13-B/C/D/E.
