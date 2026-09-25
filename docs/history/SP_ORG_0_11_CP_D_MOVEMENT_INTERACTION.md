# 0.11 CP-D — Movement Controls + Interaction Polish

## Decisões de arquitetura

### Equipment é físico por VIEW
Os controles de linha congelam o payload selecionado e o `equipmentView` no momento da interação. Eles não consultam `applicationTarget` para decidir onde mutar. Isso preserva a separação histórica entre **Destino de aplicação** e **Visualizar Equipment**.

### Um gesto, um dispatcher
`-`, quantidade, `+`, `X/Delete`, setas e DnD convergem para `executeUITransferCommand`. A camada de UI apenas normaliza a intenção; a Application Engine continua dona da transação, snapshot, revalidation e rollback.

### EXACT não recebe estado inventado
Uma linha `MAGAZINE EXACT` pode reduzir usando os states existentes. Crescimento por quantidade é recusado. O botão `+` é uma operação explícita de adicionar um magazine cheio e cria `DEFAULT_FULL` separado, sem modificar `stateData` da linha EXACT.

### Wheel scoped ao display
A CP-D usa `onMouseZChanged` do próprio `SP_ORG_Items_Dialog`, consome o gesto e aplica scroll local ao controle sob o ponteiro. Não é instalado handler global de PrevAction/NextAction, evitando sobrescrever integrações de outros mods.

### Structured Text
O flood da CP-C veio de ampersand cru em strings processadas como Structured Text. A identidade runtime foi alterada para `Capacity + Item Awareness`, e os entrypoints atuais não possuem ampersand cru. Conteúdo externo/dinâmico continua passando por `escapeStructuredText`.

## Gates 451..460
451. Structured Text hardening.
452. Wheel Guard local, sem handler global.
453. Controles físicos reais no Equipment.
454. Normalização determinística + / - / Delete / quantidade 0.
455. Fidelidade EXACT.
456. Enter/Numpad Enter + confirmação de quantidade 0.
457. Setas Kit/Catálogo/Equipment convergem ao Transfer Command.
458. Controles físicos usam Equipment VIEW congelado.
459. Atualizar = EQUIPMENT_FOCUSED, sem FULL.
460. Fechamento de invariantes: loadout/storage e feedback DnD.
