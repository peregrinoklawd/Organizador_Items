SP_ORG_Items 0.12-D.7.3 R2 — Automatic Test Runner Hotfix

Natureza da revisão
- R2 não altera as funcionalidades homologadas manualmente da D.7.3.
- Display version permanece 0.12-D.7.3 e semanticVersion permanece 0.12.0.26.
- Apenas o identificador de build recebe o sufixo R2 para rastreabilidade.

Causa raiz encontrada no RPT de 21/09/2026
1. fn_runDelivery0_12CheckpointD73Tests.sqf linha 100 usava escape C-style (\") dentro de string SQF.
   Arma/SQF não interpreta esse padrão como escape de aspas, gerando "Error Faltante )" durante compilação da função.
2. Gate histórico ITEMS-0.12-484 ainda exigia a copy antiga "equipamento escolhido"/"Destino de Aplicação".
   A D.7.3 mudou corretamente a linguagem para "equipamento exibido em Mostrar", então o gate ficou obsoleto e derrubou a cadeia cumulativa.
3. Gate histórico ITEMS-0.12-483 ainda descrevia o destino físico do botão direito do Catálogo como applicationTarget.
   O comportamento correto da D.7.3 é equipmentView/Mostrar; o gate foi alinhado para não produzir falso positivo.
4. Gate D.6.3 ITEMS-0.12-604 também congelava a copy antiga e foi tornado compatível com a linguagem atual.

Correções R2
- Removido todo uso de \" em arquivos SQF da entrega.
- Gate 643 agora procura tokens seguros POINTER_DOWN/DND_START/helper sem strings inválidas.
- Gates 483/484 foram alinhados à autoridade atual de Mostrar/equipmentView e à copy player-facing atual.
- Gate 604 aceita a evolução de copy sem permitir Classe:/Addon: no tooltip.
- Nenhuma mudança no motor físico, DnD, Repository, biblioteca pública/privada, áudio, ordenação ou UI funcional.

Alvo automático
- D.7.2 baseline: 638/638.
- D.7.3: 8 gates (639..646).
- Cumulativo esperado: 646/646.

Gate definitivo
- Executar a suíte no Arma 3 e confirmar ausência de Error in expression / Error Faltante e CUMULATIVO=646/646.
