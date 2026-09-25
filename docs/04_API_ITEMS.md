# API — Items

## Inicialização

```sqf
private _r = [] call ServoPeregrino_Organizador_Items_fnc_initialize;
```

É idempotente. Valida o Nexus, carrega Repository, inicializa estados e registra capacidades/contratos necessários.

`openInterface` exige `hasInterface`:

```sqf
private _r = [] call ServoPeregrino_Organizador_Items_fnc_openInterface;
```

## Domain — ItemEntry

Criação:

```sqf
private _r = ["ITEM","FirstAidKit",2,"NONE",[]]
    call ServoPeregrino_Organizador_Items_fnc_createItemEntry;
private _entry = (_r get "data") get "entry";
```

Schema v1:

```text
[version, entryType, className, quantity, stateMode, stateData]
```

Magazines podem usar estado `EXACT` para preservar munição parcial; não converter para full sem intenção explícita.

## Domain — ItemKit

```sqf
private _r = ["Meu kit",_entries,"ANY",["MANUAL","LOCAL"]]
    call ServoPeregrino_Organizador_Items_fnc_createItemKit;
private _kit = (_r get "data") get "kit";
```

Use `validateItemKitStructural/Semantic/Environmental` para níveis distintos de validação.

## Repository privado

APIs principais:

```sqf
[] call ServoPeregrino_Organizador_Items_fnc_listKits;
[_kitId] call ServoPeregrino_Organizador_Items_fnc_getKit;
[_kit] call ServoPeregrino_Organizador_Items_fnc_saveKit;
[_kitId] call ServoPeregrino_Organizador_Items_fnc_cloneKit;
[_kitId] call ServoPeregrino_Organizador_Items_fnc_deleteKit;
```

Persistência usa `profileNamespace`; primary e lastGood são separados. Não escrever diretamente nas chaves fora da camada Storage.

## Draft

Fluxo recomendado:

```sqf
[] call ServoPeregrino_Organizador_Items_fnc_createNewDraft;
["Nome"] call ServoPeregrino_Organizador_Items_fnc_setDraftName;
[_entry] call ServoPeregrino_Organizador_Items_fnc_addEntryToDraft;
[] call ServoPeregrino_Organizador_Items_fnc_saveDraft;
```

`saveDraft` detecta stale em modo EDIT comparando `baseUpdatedAtUTC` com o Repository.

## Catálogo

- `buildCatalog` — scan/cache dos configs.
- `getCatalog` — catálogo atual.
- `filterCatalog` — filtro/busca/categoria.
- `resolveCatalogItem` — resolve item por identidade.
- `invalidateCatalogCache` — invalida explicitamente.

O catálogo atual é contínuo/virtualizado e ordenado de forma previsível; não reintroduzir paginação por chunks.

## Inventory

- `resolvePlayerContainer(unit,target)` — resolve `U/C/M` para container real.
- `capturePlayerContainer(s)` — captura conteúdo.
- `captureContainerContent` — separa conteúdo mutável/reservado.
- `getContainerCapacityMetrics` — capacidade U/C/M.
- fingerprints detectam drift durante transações.

## Application Engine

Entry point de alto nível:

```sqf
[_container,_target,_operation,_entries,_policy,_context,_options]
    call ServoPeregrino_Organizador_Items_fnc_executeContentOperation;
```

Operações:
- `ADD`
- `REMOVE`
- `REPLACE` — planner dedicado, STRICT.
- `CLEAR` — planner dedicado, STRICT.

Políticas principais:
- `BEST_EFFORT` — pode concluir parcialmente e reportar rejeitados.
- `STRICT` — atomicidade esperada; falha leva a não-commit/rollback conforme fase.

Whole-Kit ADD/REMOVE deve passar por dry-run/plan; REPLACE/CLEAR possuem planners dedicados.

Nunca usar `ANY` como target final de commit. `ANY` deve ser resolvido para `UNIFORM`, `VEST` ou `BACKPACK` antes do commit.

## Biblioteca pública 0.13-A

Leitura:

```sqf
[] call ServoPeregrino_Organizador_Items_fnc_listPublicKits;
[_publicId] call ServoPeregrino_Organizador_Items_fnc_getPublicKit;
```

Publicação de gameplay deve preferir:

```sqf
[_kit] call ServoPeregrino_Organizador_Items_fnc_publishKitToPublic;
```

A função escolhe caminho síncrono quando apropriado e request server-authoritative em cliente MP.

Funções como `serverHandlePublicLibraryRequest`, `commitPublicKitSnapshotServer` e `clientReceivePublicLibraryResult` são infraestrutura de rede; não devem ser chamadas arbitrariamente por código de UI externo.

## UI

Entry point público: `openInterface`.

As funções `refresh*`, `render*`, `handleUI*`, `resolveUIPointerSource`, `finalizeUIPointerDrop` etc. são internas. Código externo deve evitar acoplamento a IDCs/implementação de render para não repetir a fragilidade dos gates históricos.

## Test runners

A pasta `tests` contém histórico de entregas e fixtures. Não tratar runner como API de gameplay.

## Referência exaustiva

`machine/FUNCTION_INDEX.csv` lista **todas** as funções encontradas, categoria, símbolo, path, params detectados e referências diretas.
