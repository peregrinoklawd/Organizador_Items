# Referência automática completa de funções

Funções detectadas: **270** (Nexus 21, Items 249).

Esta referência é gerada do source tree atual. Para semântica detalhada, leia o arquivo indicado.

## Items / application

| Função | Params detectados | Fonte |
|---|---|---|
| `ServoPeregrino_Organizador_Items_fnc_acquireApplicationLock` | `["_planId", "", [""]], ["_owner", "LOCAL", [""]], ["_timeoutSeconds", SERVO_PEREGRINO_ORGANIZADOR_ITEMS_APPLICATION_LOCK_TIMEOUT, [0]]` | `functions/application/fn_acquireApplicationLock.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_captureContainerSnapshot` | `["_container", objNull, [objNull]], ["_target", "", [""]], ["_containerClass", "", [""]]` | `functions/application/fn_captureContainerSnapshot.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_chooseApplicationTarget` | `["_requestedTarget", "ANY", [""]], ["_preferredTarget", "ANY", [""]], ["_availableTargets", [], [[]]]` | `functions/application/fn_chooseApplicationTarget.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_createApplicationPlan` | `["_container", objNull, [objNull]], ["_target", "", [""]], ["_operation", "ADD", [""]], ["_requestedEntries", [], [[]]], ["_policy", "BEST_EFFORT", [""]], ["_context", createHashMap, [createHashMap]]` | `functions/application/fn_createApplicationPlan.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_createClearApplicationPlan` | `["_container", objNull, [objNull]], ["_target", "", [""]], ["_context", createHashMap, [createHashMap]]` | `functions/application/fn_createClearApplicationPlan.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_createReplaceApplicationPlan` | `["_container", objNull, [objNull]], ["_target", "", [""]], ["_desiredEntries", [], [[]]], ["_context", createHashMap, [createHashMap]]` | `functions/application/fn_createReplaceApplicationPlan.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_createWholeKitApplicationPlan` | `["_container", objNull, [objNull]], ["_target", "", [""]], ["_operation", "ADD", [""]], ["_entries", [], [[]]], ["_policy", "BEST_EFFORT", [""]], ["_context", createHashMap, [createHashMap]]` | `functions/application/fn_createWholeKitApplicationPlan.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_executeApplicationPlan` | `["_plan", createHashMap, [createHashMap]], ["_options", createHashMap, [createHashMap]]` | `functions/application/fn_executeApplicationPlan.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_executeContentOperation` | `["_container", objNull, [objNull]], ["_target", "", [""]], ["_operation", "ADD", [""]], ["_entries", [], [[]]], ["_policy", "BEST_EFFORT", [""]], ["_context", createHashMap, [createHashMap]], ["_options", createHashMap, [createHashMap]]` | `functions/application/fn_executeContentOperation.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_executeDraftApplication` | `["_container", objNull, [objNull]], ["_target", "", [""]], ["_operation", "ADD", [""]], ["_policy", "BEST_EFFORT", [""]], ["_context", createHashMap, [createHashMap]], ["_options", createHashMap, [createHashMap]]` | `functions/application/fn_executeDraftApplication.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_executeSavedKitApplication` | `["_container", objNull, [objNull]], ["_target", "", [""]], ["_kitId", "", [""]], ["_operation", "ADD", [""]], ["_policy", "BEST_EFFORT", [""]], ["_context", createHashMap, [createHashMap]], ["_options", createHashMap, [createHashMap]]` | `functions/application/fn_executeSavedKitApplication.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_executeSingleOperation` | `["_unit", objNull, [objNull]], ["_target", "", [""]], ["_operation", "ADD", [""]], ["_entry", [], [[]]], ["_policy", "BEST_EFFORT", [""]], ["_options", createHashMap, [createHashMap]]` | `functions/application/fn_executeSingleOperation.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_getApplicationStatus` | `sem `params` explícito / ler fonte` | `functions/application/fn_getApplicationStatus.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_getDraftApplicationSource` | `sem `params` explícito / ler fonte` | `functions/application/fn_getDraftApplicationSource.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_getEntryUnitMass` | `["_entry", [], [[]]]` | `functions/application/fn_getEntryUnitMass.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_getSavedKitApplicationSource` | `["_kitId", "", [""]]` | `functions/application/fn_getSavedKitApplicationSource.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_mutateContainerEntry` | `["_container", objNull, [objNull]], ["_operation", "", [""]], ["_entry", [], [[]]]` | `functions/application/fn_mutateContainerEntry.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_releaseApplicationLock` | `["_token", "", [""]], ["_lastResult", createHashMap, [createHashMap]]` | `functions/application/fn_releaseApplicationLock.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_resolveApplicationTarget` | `["_unit", objNull, [objNull]], ["_requestedTarget", "ANY", [""]], ["_preferredTarget", "ANY", [""]]` | `functions/application/fn_resolveApplicationTarget.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_restoreContainerSnapshot` | `["_snapshot", createHashMap, [createHashMap]]` | `functions/application/fn_restoreContainerSnapshot.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_rollbackApplication` | `["_snapshot", createHashMap, [createHashMap]], ["_reason", "ITEMS_RUNTIME_DIVERGENCE", [""]]` | `functions/application/fn_rollbackApplication.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_simulateApplicationEntries` | `["_currentEntries", [], [[]]], ["_actions", [], [[]]]` | `functions/application/fn_simulateApplicationEntries.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_validateApplicationPlan` | `["_plan", createHashMap, [createHashMap]]` | `functions/application/fn_validateApplicationPlan.sqf` |

## Items / catalog

| Função | Params detectados | Fonte |
|---|---|---|
| `ServoPeregrino_Organizador_Items_fnc_buildCatalog` | `["_force", false, [false]]` | `functions/catalog/fn_buildCatalog.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_classifyContentClass` | `["_className", "", [""]], ["_sourceConfig", "", [""]]` | `functions/catalog/fn_classifyContentClass.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_copyCatalogItem` | `["_item", createHashMap, [createHashMap]]` | `functions/catalog/fn_copyCatalogItem.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_createCatalogItemFromConfig` | `["_className", "", [""]], ["_sourceConfig", "", [""]]` | `functions/catalog/fn_createCatalogItemFromConfig.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_deriveCatalogCategory` | `["_className", "", [""]], ["_sourceConfig", "", [""]], ["_itemType", ["Unknown", "Unknown"], [[]]], ["_cfg", configNull]` | `functions/catalog/fn_deriveCatalogCategory.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_filterCatalog` | `["_query", "", [""]], ["_categoryId", "ALL", [""]]` | `functions/catalog/fn_filterCatalog.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_getCatalog` | `sem `params` explícito / ler fonte` | `functions/catalog/fn_getCatalog.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_getCatalogCategories` | `sem `params` explícito / ler fonte` | `functions/catalog/fn_getCatalogCategories.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_getCatalogStatus` | `sem `params` explícito / ler fonte` | `functions/catalog/fn_getCatalogStatus.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_invalidateCatalogCache` | `["_reason", "EXPLICIT", [""]]` | `functions/catalog/fn_invalidateCatalogCache.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_resolveCatalogItem` | `["_className", "", [""]]` | `functions/catalog/fn_resolveCatalogItem.sqf` |

## Items / domain

| Função | Params detectados | Fonte |
|---|---|---|
| `ServoPeregrino_Organizador_Items_fnc_cloneItemKit` | `["_kit", [], [[]]], ["_newName", "", [""]]` | `functions/domain/fn_cloneItemKit.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_createItemEntry` | `["_entryType", "ITEM", [""]], ["_className", "", [""]], ["_quantity", 1, [0]], ["_stateMode", "NONE", [""]], ["_stateData", [], [[]]]` | `functions/domain/fn_createItemEntry.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_createItemKit` | `["_name", "", [""]], ["_entries", [], [[]]], ["_preferredTarget", "ANY", [""]], ["_origin", ["MANUAL", "LOCAL"], [[]]], ["_kitId", "", [""]]` | `functions/domain/fn_createItemKit.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_createStoragePayload` | `["_kits", [], [[]]], ["_metadata", [], [[]]]` | `functions/domain/fn_createStoragePayload.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_deepCopy` | `"_value"` | `functions/domain/fn_deepCopy.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_generateItemKitId` | `["_value", 0, [0]], ["_minWidth", 1, [0]]` | `functions/domain/fn_generateItemKitId.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_isValidItemKitId` | `["_kitId", "", [""]]` | `functions/domain/fn_isValidItemKitId.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_normalizeItemEntries` | `["_entries", [], [[]]]` | `functions/domain/fn_normalizeItemEntries.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_renameItemKit` | `["_kit", [], [[]]], ["_newName", "", [""]]` | `functions/domain/fn_renameItemKit.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_validateItemEntryEnvironmental` | `["_entry", [], [[]]]` | `functions/domain/fn_validateItemEntryEnvironmental.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_validateItemEntrySemantic` | `["_entry", [], [[]]]` | `functions/domain/fn_validateItemEntrySemantic.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_validateItemEntryStructural` | `["_entry", [], [[]]]` | `functions/domain/fn_validateItemEntryStructural.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_validateItemKitEnvironmental` | `["_kit", [], [[]]]` | `functions/domain/fn_validateItemKitEnvironmental.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_validateItemKitSemantic` | `["_kit", [], [[]]]` | `functions/domain/fn_validateItemKitSemantic.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_validateItemKitStructural` | `["_kit", [], [[]]]` | `functions/domain/fn_validateItemKitStructural.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_validateStorageSemantic` | `["_storage", [], [[]]]` | `functions/domain/fn_validateStorageSemantic.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_validateStorageStructural` | `["_storage", [], [[]]]` | `functions/domain/fn_validateStorageStructural.sqf` |

## Items / draft

| Função | Params detectados | Fonte |
|---|---|---|
| `ServoPeregrino_Organizador_Items_fnc_addCatalogItemToDraft` | `["_className", "", [""]], ["_quantity", 1, [0]]` | `functions/draft/fn_addCatalogItemToDraft.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_addEntryToDraft` | `["_entry", [], [[]]]` | `functions/draft/fn_addEntryToDraft.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_clearDraftEntries` | `sem `params` explícito / ler fonte` | `functions/draft/fn_clearDraftEntries.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_createCaptureDraft` | `["_entries", [], [[]]], ["_target", "ANY", [""]], ["_name", "Captura de equipamento", [""]]` | `functions/draft/fn_createCaptureDraft.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_createNewDraft` | `["_name", "Novo Kit", [""]], ["_preferredTarget", "ANY", [""]], ["_origin", ["MANUAL", "LOCAL"], [[]]], ["_entries", [], [[]]]` | `functions/draft/fn_createNewDraft.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_decrementDraftEntry` | `["_entryType", "ITEM", [""]], ["_className", "", [""]], ["_stateMode", "NONE", [""]]` | `functions/draft/fn_decrementDraftEntry.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_deleteKitPreservingDraft` | `["_kitId", "", [""]]` | `functions/draft/fn_deleteKitPreservingDraft.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_detachDraftFromPersistedKit` | `["_kitId", "", [""]]` | `functions/draft/fn_detachDraftFromPersistedKit.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_discardDraft` | `sem `params` explícito / ler fonte` | `functions/draft/fn_discardDraft.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_getDraftState` | `sem `params` explícito / ler fonte` | `functions/draft/fn_getDraftState.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_incrementDraftEntry` | `["_entryType", "ITEM", [""]], ["_className", "", [""]], ["_stateMode", "NONE", [""]]` | `functions/draft/fn_incrementDraftEntry.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_loadDraftFromKit` | `["_kitId", "", [""]]` | `functions/draft/fn_loadDraftFromKit.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_mergeEntriesIntoDraft` | `["_entriesToMerge", [], [[]]]` | `functions/draft/fn_mergeEntriesIntoDraft.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_mergeKitIntoDraft` | `["_kitId", "", [""]]` | `functions/draft/fn_mergeKitIntoDraft.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_openCaptureDraft` | `"_captureDraft"` | `functions/draft/fn_openCaptureDraft.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_removeDraftEntry` | `["_entryType", "ITEM", [""]], ["_className", "", [""]], ["_stateMode", "NONE", [""]]` | `functions/draft/fn_removeDraftEntry.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_saveDraft` | `sem `params` explícito / ler fonte` | `functions/draft/fn_saveDraft.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_saveDraftAsNew` | `["_newName", "", [""]]` | `functions/draft/fn_saveDraftAsNew.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_setDraftEntryQuantity` | `["_entryType", "ITEM", [""]], ["_className", "", [""]], ["_stateMode", "NONE", [""]], ["_quantity", 1, [0]]` | `functions/draft/fn_setDraftEntryQuantity.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_setDraftName` | `["_name", "", [""]]` | `functions/draft/fn_setDraftName.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_setDraftPreferredTarget` | `["_target", "ANY", [""]]` | `functions/draft/fn_setDraftPreferredTarget.sqf` |

## Items / integration

| Função | Params detectados | Fonte |
|---|---|---|
| `ServoPeregrino_Organizador_Items_fnc_validateNexus` | `["_minimumCapabilityVersion", SERVO_PEREGRINO_ORGANIZADOR_ITEMS_REQUIRED_NEXUS_VERSION, [0]]` | `functions/integration/fn_validateNexus.sqf` |

## Items / inventory

| Função | Params detectados | Fonte |
|---|---|---|
| `ServoPeregrino_Organizador_Items_fnc_analyzeContainerCargo` | `["_itemCargo", [[], []], [[]]], ["_magazinesAmmoCargo", [], [[]]], ["_weaponCargo", [[], []], [[]]], ["_backpackCargo", [[], []], [[]]]` | `functions/inventory/fn_analyzeContainerCargo.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_buildMutableFingerprint` | `["_entries", [], [[]]], ["_reservedCargo", [], [[]]], ["_containerClass", "", [""]], ["_target", "", [""]]` | `functions/inventory/fn_buildMutableFingerprint.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_captureContainerContent` | `["_container", objNull, [objNull]], ["_target", "", [""]], ["_containerClass", "", [""]]` | `functions/inventory/fn_captureContainerContent.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_capturePlayerContainer` | `["_unit", objNull, [objNull]], ["_target", "", [""]]` | `functions/inventory/fn_capturePlayerContainer.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_capturePlayerContainers` | `["_unit", objNull, [objNull]], ["_target", "ANY", [""]]` | `functions/inventory/fn_capturePlayerContainers.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_classifyCargoClass` | `["_className", "", [""]]` | `functions/inventory/fn_classifyCargoClass.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_compareLoadoutFingerprints` | `["_before", createHashMap, [createHashMap]], ["_after", createHashMap, [createHashMap]], ["_label", "", [""]]` | `functions/inventory/fn_compareLoadoutFingerprints.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_getContainerCapacityMetrics` | `["_container", objNull, [objNull]], ["_target", "", [""]], ["_context", createHashMap, [createHashMap]]` | `functions/inventory/fn_getContainerCapacityMetrics.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_getLoadoutFingerprint` | `["_unit", objNull, [objNull]]` | `functions/inventory/fn_getLoadoutFingerprint.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_getMutableContentFingerprint` | `["_container", objNull, [objNull]], ["_target", "", [""]], ["_containerClass", "", [""]]` | `functions/inventory/fn_getMutableContentFingerprint.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_resolvePlayerContainer` | `["_unit", objNull, [objNull]], ["_target", "", [""]]` | `functions/inventory/fn_resolvePlayerContainer.sqf` |

## Items / library

| Função | Params detectados | Fonte |
|---|---|---|
| `ServoPeregrino_Organizador_Items_fnc_clientReceivePublicLibraryResult` | `["_requestId","",[""]],["_success",false,[true]],["_code","UNKNOWN",[""]],["_message","",[""]],["_publicId","",[""]],["_revision",-1,[0]],["_created",false,[true]]` | `functions/library/fn_clientReceivePublicLibraryResult.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_commitPublicKitSnapshotServer` | `["_kit",[],[[]]], ["_sourceKitId","",[""]], ["_authorName","",[""]], ["_authorKey","",[""]], ["_sourceKind","PLAYER",[""]]` | `functions/library/fn_commitPublicKitSnapshotServer.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_getPublicKit` | `["_publicId","",[""]]` | `functions/library/fn_getPublicKit.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_getPublicLibrary` | `sem `params` explícito / ler fonte` | `functions/library/fn_getPublicLibrary.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_initializePublicLibraryAuthority` | `sem `params` explícito / ler fonte` | `functions/library/fn_initializePublicLibraryAuthority.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_listPublicKits` | `sem `params` explícito / ler fonte` | `functions/library/fn_listPublicKits.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_publishKitToPublic` | `["_kitId","",[""]],["_unit",objNull,[objNull]],["_sourceKind","PLAYER",[""]],["_authorNameOverride","",[""]],["_authorKeyOverride","",[""]]` | `functions/library/fn_publishKitToPublic.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_requestPublicKitPublish` | `["_kit",[],[[]]],["_sourceKitId","",[""]]` | `functions/library/fn_requestPublicKitPublish.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_savePublicKitToPrivate` | `["_publicId","",[""]]` | `functions/library/fn_savePublicKitToPrivate.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_serverHandlePublicLibraryRequest` | `["_operation","",[""]],["_requestId","",[""]],["_kit",[],[[]]],["_sourceKitId","",[""]]` | `functions/library/fn_serverHandlePublicLibraryRequest.sqf` |

## Items / lifecycle

| Função | Params detectados | Fonte |
|---|---|---|
| `ServoPeregrino_Organizador_Items_fnc_getBuildInfo` | `sem `params` explícito / ler fonte` | `functions/lifecycle/fn_getBuildInfo.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_initialize` | `sem `params` explícito / ler fonte` | `functions/lifecycle/fn_initialize.sqf` |

## Items / runtime

| Função | Params detectados | Fonte |
|---|---|---|
| `ServoPeregrino_Organizador_Items_fnc_getRuntimeStatus` | `sem `params` explícito / ler fonte` | `functions/runtime/fn_getRuntimeStatus.sqf` |

## Items / storage

| Função | Params detectados | Fonte |
|---|---|---|
| `ServoPeregrino_Organizador_Items_fnc_buildRepositoryState` | `["_storage", [], [[]]], ["_source", "MEMORY", [""]], ["_recovered", false, [false]]` | `functions/storage/fn_buildRepositoryState.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_cloneKit` | `["_sourceKitId", "", [""]], ["_newName", "", [""]]` | `functions/storage/fn_cloneKit.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_configureRepositoryTestMode` | `["_suffix", "", [""]], ["_clear", false, [false]]` | `functions/storage/fn_configureRepositoryTestMode.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_deleteKit` | `["_kitId", "", [""]]` | `functions/storage/fn_deleteKit.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_getKit` | `["_kitId", "", [""]]` | `functions/storage/fn_getKit.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_getRepositoryKeys` | `sem `params` explícito / ler fonte` | `functions/storage/fn_getRepositoryKeys.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_getRepositoryStatus` | `sem `params` explícito / ler fonte` | `functions/storage/fn_getRepositoryStatus.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_injectTestStoragePayload` | `["_target", "PRIMARY", [""]], ["_payload", [], [[]]]` | `functions/storage/fn_injectTestStoragePayload.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_listKits` | `sem `params` explícito / ler fonte` | `functions/storage/fn_listKits.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_loadStorage` | `"_payload", "_source", "_recovered"` | `functions/storage/fn_loadStorage.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_migrateStorage` | `["_storage", [], [[]]]` | `functions/storage/fn_migrateStorage.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_saveKit` | `["_kit", [], [[]]]` | `functions/storage/fn_saveKit.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_saveStorage` | `["_storage", [], [[]]]` | `functions/storage/fn_saveStorage.sqf` |

## Items / tests

| Função | Params detectados | Fonte |
|---|---|---|
| `ServoPeregrino_Organizador_Items_fnc_captureProductionRepositorySnapshot` | `sem `params` explícito / ler fonte` | `functions/tests/fn_captureProductionRepositorySnapshot.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_classifyLeakedTestKit` | `["_kit",[],[[]]]` | `functions/tests/fn_classifyLeakedTestKit.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_cleanupLeakedTestKits` | `["_confirmation","",[""]]` | `functions/tests/fn_cleanupLeakedTestKits.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_findLeakedTestKits` | `sem `params` explícito / ler fonte` | `functions/tests/fn_findLeakedTestKits.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_getDelivery0_10TestContract` | `sem `params` explícito / ler fonte` | `functions/tests/fn_getDelivery0_10TestContract.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_installTestActions` | `["_unit",objNull,[objNull]]` | `functions/tests/fn_installTestActions.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_prepareCumulativeTestRun` | `sem `params` explícito / ler fonte` | `functions/tests/fn_prepareCumulativeTestRun.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_resetRuntimeForTests` | `sem `params` explícito / ler fonte` | `functions/tests/fn_resetRuntimeForTests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_restoreProductionRepositorySnapshot` | `["_snapshot",createHashMap,[createHashMap]]` | `functions/tests/fn_restoreProductionRepositorySnapshot.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_10CheckpointATests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_10CheckpointATests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_10CheckpointBTests` | `"_id", "_condition", "_detail"` | `functions/tests/fn_runDelivery0_10CheckpointBTests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_10CheckpointCTests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_10CheckpointCTests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_10CheckpointDTests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_10CheckpointDTests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_10_0_7HotfixTests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_10_0_7HotfixTests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_11CheckpointATests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_11CheckpointATests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_11CheckpointB1Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_11CheckpointB1Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_11CheckpointB2Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_11CheckpointB2Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_11CheckpointB3Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_11CheckpointB3Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_11CheckpointB4Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_11CheckpointB4Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_11CheckpointB5Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_11CheckpointB5Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_11CheckpointB61Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_11CheckpointB61Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_11CheckpointB6Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_11CheckpointB6Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_11CheckpointB7Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_11CheckpointB7Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_11CheckpointBTests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_11CheckpointBTests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_11CheckpointCTests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_11CheckpointCTests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_11CheckpointDTests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_11CheckpointDTests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_12CheckpointATests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_12CheckpointATests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_12CheckpointBTests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_12CheckpointBTests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_12CheckpointC2Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_12CheckpointC2Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_12CheckpointC3Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_12CheckpointC3Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_12CheckpointC4Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_12CheckpointC4Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_12CheckpointC5Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_12CheckpointC5Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_12CheckpointC6Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_12CheckpointC6Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_12CheckpointC7Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_12CheckpointC7Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_12CheckpointC81Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_12CheckpointC81Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_12CheckpointC8Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_12CheckpointC8Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_12CheckpointCTests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_12CheckpointCTests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_12CheckpointD1Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_12CheckpointD1Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_12CheckpointD2Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_12CheckpointD2Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_12CheckpointD3Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_12CheckpointD3Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_12CheckpointD4Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_12CheckpointD4Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_12CheckpointD5Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_12CheckpointD5Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_12CheckpointD61Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_12CheckpointD61Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_12CheckpointD62Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_12CheckpointD62Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_12CheckpointD63Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_12CheckpointD63Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_12CheckpointD64Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_12CheckpointD64Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_12CheckpointD6Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_12CheckpointD6Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_12CheckpointD70Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_12CheckpointD70Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_12CheckpointD71Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_12CheckpointD71Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_12CheckpointD72Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_12CheckpointD72Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_12CheckpointD73Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_12CheckpointD73Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_12CheckpointD74Tests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_12CheckpointD74Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_13CheckpointATests` | `"_id","_condition","_detail"` | `functions/tests/fn_runDelivery0_13CheckpointATests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_1Tests` | `["_id", "", [""]], ["_condition", false, [false]], ["_detail", "", [""]]` | `functions/tests/fn_runDelivery0_1Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_2Tests` | `["_id", "", [""]], ["_condition", false, [false]], ["_detail", "", [""]]` | `functions/tests/fn_runDelivery0_2Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_3Tests` | `["_id", "", [""]], ["_condition", false, [false]], ["_detail", "", [""]]` | `functions/tests/fn_runDelivery0_3Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_4Tests` | `["_id", "", [""]], ["_condition", false, [false]], ["_detail", "", [""]]` | `functions/tests/fn_runDelivery0_4Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_4_1Tests` | `["_id", "", [""]], ["_condition", false, [false]], ["_detail", "", [""]]` | `functions/tests/fn_runDelivery0_4_1Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_4_2Tests` | `["_id", "", [""]], ["_condition", false, [false]], ["_detail", "", [""]]` | `functions/tests/fn_runDelivery0_4_2Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_4_3Tests` | `["_id", "", [""]], ["_condition", false, [false]], ["_detail", "", [""]]` | `functions/tests/fn_runDelivery0_4_3Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_5Tests` | `["_id", "", [""]], ["_condition", false, [false]], ["_detail", "", [""]]` | `functions/tests/fn_runDelivery0_5Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_5_1Tests` | `["_id", "", [""]], ["_condition", false, [false]], ["_detail", "", [""]]` | `functions/tests/fn_runDelivery0_5_1Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_6Tests` | `["_id", "", [""]], ["_condition", false, [false]], ["_detail", "", [""]]` | `functions/tests/fn_runDelivery0_6Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_6_1Tests` | `["_id", "", [""]], ["_condition", false, [false]], ["_detail", "", [""]]` | `functions/tests/fn_runDelivery0_6_1Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_7Tests` | `["_id", "", [""]], ["_condition", false, [false]], ["_detail", "", [""]]` | `functions/tests/fn_runDelivery0_7Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_7_1Tests` | `["_id", "", [""]], ["_condition", false, [false]], ["_detail", "", [""]]` | `functions/tests/fn_runDelivery0_7_1Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_7_2Tests` | `["_id", "", [""]], ["_condition", false, [false]], ["_detail", "", [""]]` | `functions/tests/fn_runDelivery0_7_2Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_8Tests` | `["_id", "", [""]], ["_condition", false, [false]], ["_detail", "", [""]]` | `functions/tests/fn_runDelivery0_8Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_8_1Tests` | `["_id", "", [""]], ["_condition", false, [false]], ["_detail", "", [""]]` | `functions/tests/fn_runDelivery0_8_1Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_8_2Tests` | `["_id", "", [""]], ["_condition", false, [false]], ["_detail", "", [""]]` | `functions/tests/fn_runDelivery0_8_2Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_8_3Tests` | `["_id", "", [""]], ["_condition", false, [false]], ["_detail", "", [""]]` | `functions/tests/fn_runDelivery0_8_3Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_9Tests` | `["_id", "", [""]], ["_condition", false, [false]], ["_detail", "", [""]]` | `functions/tests/fn_runDelivery0_9Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_9_1Tests` | `["_id", "", [""]], ["_condition", false, [false]], ["_detail", "", [""]]` | `functions/tests/fn_runDelivery0_9_1Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_9_2Tests` | `["_id", "", [""]], ["_condition", false, [false]], ["_detail", "", [""]]` | `functions/tests/fn_runDelivery0_9_2Tests.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_runDelivery0_9_3Tests` | `["_id", "", [""]], ["_condition", false, [false]], ["_detail", "", [""]]` | `functions/tests/fn_runDelivery0_9_3Tests.sqf` |

## Items / ui

| Função | Params detectados | Fonte |
|---|---|---|
| `ServoPeregrino_Organizador_Items_fnc_buildUIViewModel` | `["_unit",objNull,[objNull]]` | `functions/ui/fn_buildUIViewModel.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_cancelUIDrag` | `["_reason","CANCEL",[""]],["_expectedStartedAt",-1,[0]]` | `functions/ui/fn_cancelUIDrag.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_captureEquipmentRowToDraft` | `["_source",controlNull,[controlNull]]` | `functions/ui/fn_captureEquipmentRowToDraft.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_captureEquipmentToDraft` | `["_unit",objNull,[objNull]],["_target","U",[""]]` | `functions/ui/fn_captureEquipmentToDraft.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_classifyUIOutcome` | `["_result",createHashMap,[createHashMap]]` | `functions/ui/fn_classifyUIOutcome.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_clearKitLibraryActionStatus` | `["_reason","USER_INTERACTION",[""]]` | `functions/ui/fn_clearKitLibraryActionStatus.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_commitDraftQuantityFromControl` | `["_control",controlNull,[controlNull]]` | `functions/ui/fn_commitDraftQuantityFromControl.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_commitEquipmentQuantityFromControl` | `["_control",controlNull,[controlNull]]` | `functions/ui/fn_commitEquipmentQuantityFromControl.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_createUIDragSnapshot` | `["_sourceType", "", [""]], ["_sourceIDC", -1, [0]], ["_sourceId", "", [""]]` | `functions/ui/fn_createUIDragSnapshot.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_createUIPhysicalRowCommand` | `["_action", "", [""]], ["_entry", [], [[]]], ["_explicitValue", -1, [0]]` | `functions/ui/fn_createUIPhysicalRowCommand.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_createUIState` | `sem `params` explícito / ler fonte` | `functions/ui/fn_createUIState.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_escapeStructuredText` | `["_text", "", [""]]` | `functions/ui/fn_escapeStructuredText.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_executeEquipmentClear` | `["_unit", objNull, [objNull]], ["_equipmentView", "U", [""]], ["_options", createHashMap, [createHashMap]]` | `functions/ui/fn_executeEquipmentClear.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_executeEquipmentRowAction` | `["_payload",[],[[]]], ["_action","",[""]], ["_explicitValue",-1,[0]], ["_view","",[""]], ["_origin","EQUIPMENT_ROW",[""]]` | `functions/ui/fn_executeEquipmentRowAction.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_executeUITransferCommand` | `["_sourceType", "", [""]], ["_payload", []], ["_destination", "DRAFT", [""]], ["_operation", "AUTO", [""]], ["_unit", objNull, [objNull]], ["_requestedTarget", "", [""]], ["_options", createHashMap, [createHashMap]]` | `functions/ui/fn_executeUITransferCommand.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_finalizeUIPointerDrop` | `["_drag",createHashMap,[createHashMap]], ["_pointerX",-1000,[0]], ["_pointerY",-1000,[0]], ["_display",displayNull,[displayNull]], ["_useCurrentMouse",true,[true]], ["_originOverride","",[""]]` | `functions/ui/fn_finalizeUIPointerDrop.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_formatUIMass` | `["_mass",0,[0]], ["_includeImperial",false,[true]], ["_decimals",2,[0]]` | `functions/ui/fn_formatUIMass.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_getResponsiveCatalogLabels` | `["_availableWidthPx",0,[0]]` | `functions/ui/fn_getResponsiveCatalogLabels.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_getUICatalogWindow` | `["_query", "", [""]], ["_categoryId", "ALL", [""]], ["_offset", 0, [0]], ["_window", SERVO_PEREGRINO_ORGANIZADOR_ITEMS_UI_CATALOG_WINDOW_SIZE, [0]]` | `functions/ui/fn_getUICatalogWindow.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_getUIEntryAwareness` | `["_entry", [], [[]]], ["_metadata", createHashMap, [createHashMap]]` | `functions/ui/fn_getUIEntryAwareness.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_getUIFeedbackPalette` | `["_kind", "INFO", [""]]` | `functions/ui/fn_getUIFeedbackPalette.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_getUIItemKitAwareness` | `["_kit",[],[[]]]` | `functions/ui/fn_getUIItemKitAwareness.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_getUIMovementSoundProfile` | `["_movement","ADD",[""]]` | `functions/ui/fn_getUIMovementSoundProfile.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_getUIPhysicalReadiness` | `["_unit", objNull, [objNull]], ["_requestedTarget", "", [""]], ["_preferredTarget", "", [""]], ["_options", createHashMap, [createHashMap]]` | `functions/ui/fn_getUIPhysicalReadiness.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_getUIState` | `sem `params` explícito / ler fonte` | `functions/ui/fn_getUIState.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_getUITargetLabel` | `["_target","",[""]]` | `functions/ui/fn_getUITargetLabel.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_handleDraftQuantityKeyDown` | `["_control",controlNull,[controlNull]], ["_key",-1,[0]], ["_shift",false,[false]], ["_ctrlKey",false,[false]], ["_alt",false,[false]]` | `functions/ui/fn_handleDraftQuantityKeyDown.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_handleDraftRowAction` | `["_action","",[""]], ["_source",controlNull,[controlNull,[]]], ["_explicitValue",nil]` | `functions/ui/fn_handleDraftRowAction.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_handleEquipmentQuantityKeyDown` | `["_control",controlNull,[controlNull]], ["_key",-1,[0]], ["_shift",false,[false]], ["_ctrlKey",false,[false]], ["_alt",false,[false]]` | `functions/ui/fn_handleEquipmentQuantityKeyDown.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_handleUIDragEvent` | `["_event","",[""]],["_args",[],[[]]]` | `functions/ui/fn_handleUIDragEvent.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_handleUIEvent` | `["_event","",[""]],["_value",nil]` | `functions/ui/fn_handleUIEvent.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_handleUIKeyDown` | `"_display","_key","_shift","_ctrlKey","_alt"` | `functions/ui/fn_handleUIKeyDown.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_handleUITransferToDraft` | `["_sourceType","",[""]], ["_payload",nil], ["_options",createHashMap,[createHashMap]]` | `functions/ui/fn_handleUITransferToDraft.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_handleUIWheel` | `"_displayOrControl",["_scroll",0,[0]]` | `functions/ui/fn_handleUIWheel.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_onInterfaceLoad` | `["_display",displayNull,[displayNull]]` | `functions/ui/fn_onInterfaceLoad.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_onInterfaceUnload` | `sem `params` explícito / ler fonte` | `functions/ui/fn_onInterfaceUnload.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_openInterface` | `sem `params` explícito / ler fonte` | `functions/ui/fn_openInterface.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_playUIFeedbackSound` | `["_outcome","SUCCESS",[""]], ["_options",createHashMap,[createHashMap]]` | `functions/ui/fn_playUIFeedbackSound.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_playUIMovementSound` | `["_movement","ADD",[""]], ["_options",createHashMap,[createHashMap]]` | `functions/ui/fn_playUIMovementSound.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_presentLogicalMutationResult` | `["_result",createHashMap,[createHashMap]], ["_movement","",[""]], ["_audible",true,[true]]` | `functions/ui/fn_presentLogicalMutationResult.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_presentUIResult` | `["_result",createHashMap,[createHashMap]], ["_audible",true,[true]], ["_options",createHashMap,[createHashMap]]` | `functions/ui/fn_presentUIResult.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_pushUIFeedback` | `["_message","",[""]],["_kind","INFO",[""]]` | `functions/ui/fn_pushUIFeedback.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_reconcilePrivateKitSelectionAfterDelete` | `["_preferredIndex",-1,[0]], ["_display",displayNull,[displayNull]]` | `functions/ui/fn_reconcilePrivateKitSelectionAfterDelete.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_refreshCatalogSelectionDetails` | `["_className","",[""]]` | `functions/ui/fn_refreshCatalogSelectionDetails.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_refreshCatalogWindowUI` | `["_reason","CATALOG_FOCUSED",[""]]` | `functions/ui/fn_refreshCatalogWindowUI.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_refreshDraftMutationUI` | `["_reason","DRAFT_MUTATION",[""]], ["_options",createHashMap,[createHashMap]]` | `functions/ui/fn_refreshDraftMutationUI.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_refreshEquipmentSelectionControls` | `"_type","_className","_quantity","_mode","_states"` | `functions/ui/fn_refreshEquipmentSelectionControls.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_refreshEquipmentViewUI` | `["_options",createHashMap,[createHashMap]]` | `functions/ui/fn_refreshEquipmentViewUI.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_refreshHeaderStatusUI` | `["_display",displayNull,[displayNull]], ["_enabled",false,[true]], ["_resolvedTarget","",[""]], ["_equipmentView","U",[""]], ["_capacity",createHashMap,[createHashMap]]` | `functions/ui/fn_refreshHeaderStatusUI.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_refreshHeaderUI` | `["_unit",player,[objNull]]` | `functions/ui/fn_refreshHeaderUI.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_refreshInterface` | `"_idc","_value"` | `functions/ui/fn_refreshInterface.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_refreshKitSwitchUI` | `["_reason","LOAD_KIT",[""]]` | `functions/ui/fn_refreshKitSwitchUI.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_refreshPhysicalMutationUI` | `["_result", createHashMap, [createHashMap]], ["_options", createHashMap, [createHashMap]]` | `functions/ui/fn_refreshPhysicalMutationUI.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_refreshPhysicalTargetUI` | `["_options", createHashMap, [createHashMap]]` | `functions/ui/fn_refreshPhysicalTargetUI.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_renderCatalogRowsUI` | `["_rows",[],[[]]], ["_selectedClass","",[""]], ["_reason","CATALOG_RENDER",[""]]` | `functions/ui/fn_renderCatalogRowsUI.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_renderEquipmentRowsUI` | `["_rows",[],[[]]], ["_view","U",[""]], ["_capacity",createHashMap,[createHashMap]], ["_contentMass",0,[0]], ["_unknownMassCount",0,[0]], ["_status","OK",[""]], ["_reason","EQUIPMENT_RENDER",[""]]` | `functions/ui/fn_renderEquipmentRowsUI.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_requestDraftTransition` | `["_action","",[""]], ["_payload","",[""]], ["_confirmed",false,[false]]` | `functions/ui/fn_requestDraftTransition.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_requestEquipmentRowAction` | `["_action","",[""]], ["_source",controlNull,[controlNull]], ["_explicitValue",-1,[0]]` | `functions/ui/fn_requestEquipmentRowAction.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_resolveUIItemMetadata` | `["_className","",[""]]` | `functions/ui/fn_resolveUIItemMetadata.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_resolveUIPanelDropTarget` | `["_pointerX",-1000,[0]], ["_pointerY",-1000,[0]], ["_sourceType","",[""]], ["_display",displayNull,[displayNull]], ["_useCurrentMouse",true,[true]]` | `functions/ui/fn_resolveUIPanelDropTarget.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_resolveUIPointerSource` | `["_display",displayNull,[displayNull]], ["_pointerX",-1000,[0]], ["_pointerY",-1000,[0]], ["_useCurrentMouse",true,[true]]` | `functions/ui/fn_resolveUIPointerSource.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_scanVanillaInventorySounds` | `["_logToRPT",true,[true]]` | `functions/ui/fn_scanVanillaInventorySounds.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_updateUIDragVisualProxy` | `["_mode","MOVE",[""]], ["_drag",createHashMap,[createHashMap]], ["_display",displayNull,[displayNull]], ["_pointerX",-1000,[0]], ["_pointerY",-1000,[0]], ["_useCurrentMouse",true,[true]]` | `functions/ui/fn_updateUIDragVisualProxy.sqf` |
| `ServoPeregrino_Organizador_Items_fnc_updateUIItemTooltip` | `["_mode","MOVE",[""]], ["_sourceCtrl",controlNull,[controlNull]], ["_display",displayNull,[displayNull]]` | `functions/ui/fn_updateUIItemTooltip.sqf` |

## Nexus / capabilities

| Função | Params detectados | Fonte |
|---|---|---|
| `ServoPeregrino_Organizador_Nexus_fnc_getCapability` | `["_capabilityId", "", [""]]` | `functions/capabilities/fn_getCapability.sqf` |
| `ServoPeregrino_Organizador_Nexus_fnc_hasCapability` | `["_capabilityId", "", [""]], ["_minimumVersion", 1, [0]]` | `functions/capabilities/fn_hasCapability.sqf` |
| `ServoPeregrino_Organizador_Nexus_fnc_listCapabilities` | `sem `params` explícito / ler fonte` | `functions/capabilities/fn_listCapabilities.sqf` |
| `ServoPeregrino_Organizador_Nexus_fnc_registerCapability` | `["_capabilityId", "", [""]], ["_version", 1, [0]], ["_provider", "", [""]], ["_metadata", createHashMap, [createHashMap]]` | `functions/capabilities/fn_registerCapability.sqf` |
| `ServoPeregrino_Organizador_Nexus_fnc_unregisterCapability` | `["_capabilityId", "", [""]], ["_provider", "", [""]]` | `functions/capabilities/fn_unregisterCapability.sqf` |

## Nexus / contracts

| Função | Params detectados | Fonte |
|---|---|---|
| `ServoPeregrino_Organizador_Nexus_fnc_createContract` | `["_contractId", "", [""]], ["_version", 1, [0]], ["_source", "", [""]], ["_payload", createHashMap, [createHashMap]], ["_correlationId", "", [""]]` | `functions/contracts/fn_createContract.sqf` |
| `ServoPeregrino_Organizador_Nexus_fnc_registerContractDefinition` | `["_contractId", "", [""]], ["_version", 1, [0]], ["_provider", "", [""]], ["_requiredPayloadKeys", [], [[]]], ["_metadata", createHashMap, [createHashMap]]` | `functions/contracts/fn_registerContractDefinition.sqf` |
| `ServoPeregrino_Organizador_Nexus_fnc_validateContract` | `["_contract", createHashMap]` | `functions/contracts/fn_validateContract.sqf` |

## Nexus / diagnostics

| Função | Params detectados | Fonte |
|---|---|---|
| `ServoPeregrino_Organizador_Nexus_fnc_createDiagnostic` | `["_severity", "INFO", [""]], ["_code", "UNSPECIFIED", [""]], ["_message", "", [""]], ["_context", createHashMap, [createHashMap]]` | `functions/diagnostics/fn_createDiagnostic.sqf` |
| `ServoPeregrino_Organizador_Nexus_fnc_log` | `["_component", "NEXUS", [""]], ["_level", "INFO", [""]], ["_message", "", [""]], ["_context", createHashMap, [createHashMap]]` | `functions/diagnostics/fn_log.sqf` |
| `ServoPeregrino_Organizador_Nexus_fnc_setLogLevel` | `["_level", "INFO", [""]]` | `functions/diagnostics/fn_setLogLevel.sqf` |

## Nexus / events

| Função | Params detectados | Fonte |
|---|---|---|
| `ServoPeregrino_Organizador_Nexus_fnc_publishEvent` | `["_eventName", "", [""]], ["_payload", createHashMap, [createHashMap]], ["_source", "", [""]], ["_version", 1, [0]]` | `functions/events/fn_publishEvent.sqf` |
| `ServoPeregrino_Organizador_Nexus_fnc_subscribeEvent` | `["_eventName", "", [""]], ["_handler", {}, [{}]], ["_owner", "", [""]]` | `functions/events/fn_subscribeEvent.sqf` |
| `ServoPeregrino_Organizador_Nexus_fnc_unsubscribeEvent` | `["_token", "", [""]]` | `functions/events/fn_unsubscribeEvent.sqf` |

## Nexus / lifecycle

| Função | Params detectados | Fonte |
|---|---|---|
| `ServoPeregrino_Organizador_Nexus_fnc_getBuildInfo` | `sem `params` explícito / ler fonte` | `functions/lifecycle/fn_getBuildInfo.sqf` |
| `ServoPeregrino_Organizador_Nexus_fnc_initialize` | `sem `params` explícito / ler fonte` | `functions/lifecycle/fn_initialize.sqf` |

## Nexus / results

| Função | Params detectados | Fonte |
|---|---|---|
| `ServoPeregrino_Organizador_Nexus_fnc_createResult` | `["_success", false, [false]], ["_code", "", [""]], ["_message", "", [""]], ["_data", createHashMap, [createHashMap]], ["_diagnostics", [], [[]]]` | `functions/results/fn_createResult.sqf` |
| `ServoPeregrino_Organizador_Nexus_fnc_isResult` | `["_value", createHashMap]` | `functions/results/fn_isResult.sqf` |

## Nexus / tests

| Função | Params detectados | Fonte |
|---|---|---|
| `ServoPeregrino_Organizador_Nexus_fnc_installTestActions` | `["_unit", player, [objNull]]` | `functions/tests/fn_installTestActions.sqf` |
| `ServoPeregrino_Organizador_Nexus_fnc_resetRuntimeForTests` | `sem `params` explícito / ler fonte` | `functions/tests/fn_resetRuntimeForTests.sqf` |
| `ServoPeregrino_Organizador_Nexus_fnc_runDelivery1_1Tests` | `["_silent", false, [false]]` | `functions/tests/fn_runDelivery1_1Tests.sqf` |
