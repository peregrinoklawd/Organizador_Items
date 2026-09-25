# Arquitetura

## Visão geral

O SP_ORG foi separado em dois addons lógicos:

```text
ServoPeregrino_Organizador_Nexus
    infraestrutura transversal: Result, Diagnostics, Capabilities, Contracts, Events

ServoPeregrino_Organizador_Items
    domínio de ItemKit, Repository, catálogo, inventário, Draft, Application Engine,
    UI e biblioteca PRIVADOS/PÚBLICOS
```

`Items` declara dependência de `ServoPeregrino_Organizador_Nexus` em `CfgPatches.requiredAddons`.

## Produto vs laboratório

A partir da 0.13, **o addon é o produto**. A missão VR é laboratório de teste e não deve voltar a carregar o runtime principal da aplicação dentro do `description.ext`.

```text
@SP_ORG_Items_0_13_A_R2/
  addons/
    ServoPeregrino_Organizador_Nexus.pbo
    ServoPeregrino_Organizador_Items.pbo

MPMissions/
  SP_ORG_Items_0_13_A_Multiplayer_Lab_8Slots_R3.VR.pbo
```

## Camadas de Items

- `domain` — ItemEntry, ItemKit, validação, normalização, IDs.
- `storage` — persistência privada via `profileNamespace`, primary + lastGood.
- `library` — biblioteca pública de sessão; em 0.13-A a mutação é server-authoritative.
- `catalog` — catálogo derivado de configs carregados.
- `inventory` — captura de U/C/M, fingerprints e capacidade.
- `application` — dry-run, planos, lock, commit, rollback, EXACT, Whole-Kit.
- `draft` — edição lógica antes de persistir/aplicar.
- `ui` — view-model, renderers, DnD, ghost, ações e feedback.
- `tests` — regressão histórica e checkpoint 0.13-A; não é API de gameplay.

## Authorities que NÃO devem ser misturadas

**`applicationTarget`**: “Onde aplicar o kit?”; autoridade para ações Whole-Kit como aplicar/remover/substituir.

**`equipmentView`**: “Mostrar”; autoridade para ações físicas diretas no painel Conteúdo do Equipamento e seta direita do Catálogo.

Misturar esses estados foi um bug real já corrigido. Trate a separação como contrato congelado.

## Privado vs público

- **PRIVADOS**: Repository persistente do perfil local (`profileNamespace`).
- **PÚBLICOS**: snapshots separados e read-only para consumo; em 0.13-A continuam `SESSION` scoped.
- publicação não compartilha o Repository privado; o cliente envia um snapshot do ItemKit.
- servidor deriva a identidade real do remetente e controla `publicId`/`revision`.

## UI/DnD

O DnD moderno usa o display como autoridade do gesto para Catálogo/Equipment/Draft, hit-test de painéis amplos e ghost criado em runtime no topo. Meus Kits mantém o caminho nativo onde aplicável. Tooltips devem ser pass-through e desaparecer durante drag.

## Carga

Não confundir dois conceitos:

- carga global do jogador: `loadAbs player`, `load player`, `maxSoldierLoad`; inclui armas/itens vinculados/conteúdo U/C/M e pode exibir `100%+ SOBRECARGA`;
- capacidade do container: `loadAbs container` + `maximumLoad` da classe do Uniforme/Colete/Mochila.
