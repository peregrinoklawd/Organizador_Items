# Teste — SP_ORG_Items 0.12-D.3

## 1. Automático
Execute a ação:

**SP_ORG_Items 0.12-D.3 — Tooltip + Action Hierarchy 566**

Resultado esperado:
- baseline D.2: `558/558`;
- D.3: `8/8`;
- cumulativo: `566/566`;
- nenhuma `Variável indefinida` para `runDelivery0_12CheckpointD2Tests` ou `runDelivery0_12CheckpointD3Tests`.

## 2. Tooltip — teste obrigatório
Com a interface aberta, passe o mouse lentamente sobre **ícone e nome** de itens em:

1. **Catálogo de Itens**;
2. **Kit Selecionado**;
3. **Conteúdo do Equipamento**.

Esperado:
- tooltip aparece sem precisar clicar;
- acompanha o ponteiro sem cobrir permanentemente o item;
- muda corretamente ao passar para outro item;
- desaparece ao sair do item/painel;
- não fica preso depois de busca, scroll, troca de equipamento ou refresh;
- durante o DnD, o tooltip desaparece e o ghost passa a ser o feedback visual dominante.

## 3. DnD / ghost — regressão crítica
Repetir:
- Catálogo → Kit Selecionado;
- Catálogo → Equipamento;
- Equipment → Kit Selecionado;
- Kit Selecionado → Equipment;
- Meus Kits → Kit Selecionado / Equipment;
- cancelar arraste fora do alvo;
- confirmar que o ghost continua acompanhando o mouse.

Nenhum comportamento de DnD pode piorar para recuperar o tooltip.

## 4. Hierarquia visual
No Kit Selecionado, validar:

**Onde aplicar o kit?**
`QUALQUER | UNIFORME | COLETE | MOCHILA`

**O que deseja fazer?**
`APLICAR | REMOVER | SUBSTITUIR`

Esperado:
- os botões permanecem nas posições já conhecidas;
- a segunda legenda deixa claro que a linha inferior representa operações;
- não há sobreposição com o status inferior;
- cada um dos 7 botões possui tooltip compreensível.

## 5. Operações físicas
Fazer smoke test de:
- APLICAR;
- REMOVER;
- SUBSTITUIR (incluindo confirmação);
- destino QUALQUER e pelo menos um destino explícito.

## 6. RPT
Enviar o RPT completo se houver qualquer FAIL ou erro de código.
Procurar especialmente por:
- `[TEST 0.12-D.3]`;
- `[DND]`;
- `[DND_GHOST]`;
- `runDelivery0_12CheckpointD2Tests`;
- `runDelivery0_12CheckpointD3Tests`;
- `updateUIItemTooltip`;
- `Error` / `Undefined variable` / `Variável indefinida`.

Erros conhecidos de mods externos como `aceax_bandana` e `MRHSatellite` não pertencem ao SP_ORG_Items e devem ser separados dos erros da missão.
