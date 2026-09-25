# Teste — SP_ORG_Items 0.12 FINAL

A 0.12 FINAL é um **Integration Freeze** sobre a D.7.4 aprovada manualmente.

## Smoke manual recomendado

1. Abrir a interface e confirmar header `0.12 FINAL`.
2. Validar Catálogo: busca, categorias, wheel, slider e setas ←/→.
3. Validar DnD + ghost nos destinos de Kit Selecionado e Equipment.
4. Validar `Mostrar` (equipmentView) independente de `Onde aplicar o kit?` (applicationTarget).
5. Validar Equipment: `- / quantidade / + / X`, inclusive magazine EXACT.
6. Validar Whole-Kit: APLICAR / REMOVER / SUBSTITUIR / LIMPAR.
7. Validar carga global normal e indicador `100%+ · SOBRECARGA` quando aplicável.
8. Validar capacidade de Uniforme/Colete/Mochila separadamente.
9. Validar biblioteca PRIVADOS/PÚBLICOS, COPIAR, PUBLICAR e exclusão.
10. Validar tooltips e sons de movimentação/publicação/cópia.

## Automático

O contrato histórico continua com 654 gates. Os gates 516/523 da C.6 são dívida técnica conhecida e podem causar fail-fast, mesmo com DnD funcional aprovado manualmente. Nesta release isso **não é critério de bloqueio** por decisão explícita de homologação.

Não interpretar fail-fast posterior a esses gates como regressão automática das entregas D.7.x.
