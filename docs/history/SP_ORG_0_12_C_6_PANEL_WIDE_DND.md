# SP_ORG_Items 0.12-C.6 — Panel-Wide Drop Targets + DnD Restoration

## Motivo
Na 0.12-C.5 os botões e o dispatcher continuavam corretos, porém o teste manual mostrou regressão do gesto real de Drag and Drop nas superfícies modernas `CT_CONTROLS_TABLE`. Somente o drag nativo de Meus Kits continuava funcionando de forma perceptível.

Além disso, os destinos de drop ainda dependiam das faixas estreitas `2103` (Draft) e `4113` (físico), o que tornava a interação desnecessariamente precisa.

## Solução
A C.6 introduz hit-test por painel completo. Os backgrounds dos painéis Kit Selecionado e Conteúdo do Equipamento recebem IDCs próprios e são usados apenas como bounds/feedback visual.

### Destino Draft
Aceita:
- `CATALOG`;
- `EQUIPMENT`;
- `KIT`.

Resultado: cópia/merge lógico, sem mutação física e sem autosave.

### Destino físico
Aceita:
- `CATALOG`;
- `KIT`;
- `ENTRY` de uma linha do Draft.

Resultado: ADD físico pelo Application Target atual. O Equipment View permanece independente.

### Equipment como origem
Equipment → Draft continua sendo captura/cópia lógica. Equipment → Equipment não é aceito por DnD para evitar uma semântica implícita de transferência entre containers.

## Draft row
Cada linha do Draft congela uma `ItemEntry v1` completa no início do drag. Assim, arrastar uma linha ao Equipment aplica aquela linha e não o Draft inteiro.

## Superfície de drag
Em Catálogo, Draft e Equipment, somente **nome e ícone** iniciam drag. Botões e campo de quantidade permanecem interações próprias.

## Pipeline
1. `MouseButtonDown` na superfície válida cria snapshot imutável do drag.
2. `onMouseMoving` do display faz hit-test dos painéis e atualiza o feedback visual.
3. `onMouseButtonUp` resolve o destino pelo painel completo.
4. O comando converge para `executeUITransferCommand`.
5. O refresh permanece focal.

Meus Kits conserva `onLBDrag` nativo, mas o `MouseButtonUp` do display permite que seu drop também use o painel inteiro.

## Telemetria
A C.6 adiciona:
- `[DND] START`;
- `[DND] HOVER`;
- `[DND] DROP`.

`HOVER` é emitido somente na troca de área para não gerar flood no RPT.

## Compatibilidade
As faixas históricas 2103/4113 continuam presentes e aceitam drop para compatibilidade, mas não são mais obrigatórias.

## Invariantes preservados
- Application Target != Equipment View;
- EXACT sem fabricação de `stateData`;
- Draft não autosalva;
- Storage Guard;
- Catálogo virtualizado (32 controles de linha por janela);
- `CATALOG_FOCUSED`, `DRAFT_FOCUSED`, `EQUIPMENT_FOCUSED`, `PHYSICAL_FOCUSED`, `KIT_SWITCH_FOCUSED`;
- Equipment X/Delete imediato.
