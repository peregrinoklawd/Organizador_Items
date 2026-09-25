# Modelos de dados e contratos

## Nexus Result v1

HashMap:

```text
schema       = SERVO_PEREGRINO_ORGANIZADOR_RESULT
version      = 1
success      = bool
code         = string
message      = string
data          = HashMap
diagnostics  = array
createdAtUTC = systemTimeUTC
```

Consumidores devem testar `success` e, quando necessário, `code`; não depender apenas de texto player-facing.

## Nexus Contract

HashMap com `schema`, `contract`, `version`, `source`, `correlationId`, `payload`, `createdAtUTC`.

## ItemEntry v1

```text
0 version
1 entryType
2 className
3 quantity
4 stateMode
5 stateData
```

A validação é dividida em Structural, Semantic e Environmental.

## ItemKit v1

```text
0 magic = SERVO_PEREGRINO_ORGANIZADOR_ITEMS_KIT
1 version
2 kitId
3 name
4 preferredTarget
5 origin
6 createdAtUTC
7 updatedAtUTC
8 entries
9 metadata/reservado
```

`preferredTarget` permanece no schema por compatibilidade mesmo tendo sido removido da UX visível como autoridade primária.

## Storage v1

```text
0 magic = SERVO_PEREGRINO_ORGANIZADOR_ITEMS_STORAGE
1 version
2 kits
3 metadata
```

Chaves de profileNamespace:

```text
ServoPeregrino_Organizador_Items_storage_v1
ServoPeregrino_Organizador_Items_storage_lastGood_v1
```

Em test mode, suffix seguro produz chaves `_TEST_<suffix>_v1` e `_lastGood_v1`.

## Public Library v1

Registry em `missionNamespace`, replicado publicamente pelo servidor em 0.13-A:

```text
[magic, version, revision, entries]
```

Public entry atual:

```text
[publicId, sourceKind, sourceKitId, authorName, authorKey,
 publishedAtUTC, updatedAtUTC, snapshotItemKit]
```

Escopo atual: **SESSION**. Não confundir replicação com persistência entre missão/restart.

## Public Authority 0.13-A

Cliente gera `requestId`, marca pending `SENT` e envia `PUBLISH` ao endpoint server-only. O servidor usa `remoteExecutedOwner` para resolver o player em `allPlayers`, deriva `name` e `getPlayerUID`, valida snapshot e comita. Callback cliente só é aceito de origem server (`remoteExecutedOwner == 2`) no caminho remoto MP.

## ApplicationPlan

Planos são HashMaps versionados contendo, entre outros: `planId`, `status`, `scope`, `operation`, `policy`, `target`, `container`, `actions`, `rejectedEntries`, fingerprints pré/pós, expected entries e capacity quando aplicável.

## ApplyResult

Resultado físico final registra `status` COMPLETE/PARTIAL, operation, target, requested/applied/rejected entries, actionResults, rollback e fingerprint final.
