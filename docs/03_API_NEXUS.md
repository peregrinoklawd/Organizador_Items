# API — Nexus

## Convenção

SQF não usa “métodos” OO tradicionais aqui. As classes de `CfgFunctions` registram funções globais no formato:

```sqf
ServoPeregrino_Organizador_Nexus_fnc_<nome>
```

Todas as APIs importantes retornam o envelope `Result` quando aplicável.

## Result

```sqf
[success, code, message, data, diagnostics] call ServoPeregrino_Organizador_Nexus_fnc_createResult
```

Retorna HashMap com `schema`, `version`, `success`, `code`, `message`, `data`, `diagnostics`, `createdAtUTC`.

Exemplo:

```sqf
private _r = [true,"EXAMPLE_OK","Operação concluída.",createHashMap] call ServoPeregrino_Organizador_Nexus_fnc_createResult;
if (_r getOrDefault ["success",false]) then { /* ... */ };
```

## Lifecycle

- `initialize` — idempotente; cria registries e capacidade `nexus.runtime`.
- `getBuildInfo` — identidade/versionamento.

## Diagnostics

- `createDiagnostic` — cria diagnóstico estruturado.
- `setLogLevel` — define nível global do Nexus.
- `log` — loga com prefixo estruturado.

## Capabilities

- `registerCapability(capabilityId, version, provider, metadata)` — registra capacidade; normaliza id para minúsculas; conflito de provider/version é erro.
- `hasCapability(capabilityId, minVersion)` — verifica disponibilidade.
- `getCapability(capabilityId)` — lê registro.
- `listCapabilities()` — lista capacidades.
- `unregisterCapability(capabilityId, provider)` — remove com ownership.

Exemplo:

```sqf
[
  "items.runtime", 1, "ServoPeregrino_Organizador_Items",
  createHashMapFromArray [["description","Runtime Items"]]
] call ServoPeregrino_Organizador_Nexus_fnc_registerCapability;
```

## Contracts

- `registerContractDefinition(contractId, version, owner, requiredFields, metadata)` — registra definição.
- `createContract(contractId, version, source, payload, correlationId)` — cria envelope de contrato.
- `validateContract(contract)` — valida schema/definição/fields.

Envelope básico: `schema`, `contract`, `version`, `source`, `correlationId`, `payload`, `createdAtUTC`.

## Events

- `subscribeEvent(eventName, owner, handler)` — assina evento.
- `unsubscribeEvent(eventName, owner)` — remove assinatura.
- `publishEvent(eventName, payload, source, version)` — publica envelope e isola falhas de handlers em diagnostics.

Exemplo:

```sqf
["items.runtime.ready","my_module",{
    params ["_event"];
    diag_log (_event get "payload");
}] call ServoPeregrino_Organizador_Nexus_fnc_subscribeEvent;
```

## Testes

`resetRuntimeForTests`, `runDelivery1_1Tests`, `installTestActions` são ferramentas de desenvolvimento; não devem virar dependência de gameplay.

## Referência completa

Consulte `machine/FUNCTION_INDEX.csv/json` para assinatura detectada, path, tamanho e dependências de todas as funções Nexus e Items.
