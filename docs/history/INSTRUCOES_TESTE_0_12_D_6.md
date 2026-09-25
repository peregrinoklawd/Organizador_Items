# SP_ORG_Items 0.12-D.6 — Instruções de teste

## Teste automático

1. Copie a pasta da missão `.VR` desta entrega para a pasta de missões do Arma 3.
2. Inicie a missão com o mesmo modset usado nas validações anteriores.
3. Execute a action **SP_ORG_Items 0.12-D.6 — UI Cohesion + Vanilla Weight Polish 590**.
4. Resultado esperado: **590/590**.
5. Se houver falha, use o **primeiro FAIL do SP_ORG no RPT** como ponto de investigação. Erros de mods externos não devem ser confundidos com erro do Organizador.

## Validação manual prioritária

1. **DnD / ghost** — arraste itens entre Catálogo, Kit Selecionado e Conteúdo do Equipamento. O ghost deve continuar acompanhando o mouse, porém mais translúcido. Tooltips não devem reaparecer durante o drag e devem voltar após o gesto.
2. **KIT SELECIONADO** — confirme que `Onde aplicar o kit?`, os quatro destinos, `O que fazer no destino?` e `APLICAR / REMOVER / SUBSTITUIR` aparecem em quatro faixas distintas, sem texto sobre botão.
3. **Header** — confirme que Operador, Unidade, Carga e barra formam um bloco compacto no lado direito e não colidem com o X de fechar, inclusive em ultrawide.
4. **Catálogo / Opção A** — confirme que os antigos botões quadrados de salto ▲/▼ não aparecem. A navegação deve continuar por roda do mouse e pelo slider vertical; as setas das linhas continuam sendo ações de transferência, não navegação.
5. **Peso** — confirme que itens, kits, Draft, equipamento e header não mostram mais `u` ao jogador. Linhas compactas usam kg; detalhes/tooltip/header podem mostrar kg + lb.
6. **Regressão funcional** — valide busca, quantidade `- / campo / +`, X imediato, Salvar/Salvar como novo/Descartar/Limpar, setas de transferência, DnD, APLICAR/REMOVER/SUBSTITUIR, captura/limpeza do equipamento e magazine EXACT parcial.

## Observação importante sobre peso

A mudança é somente de apresentação. O motor continua usando a massa de configuração do Arma internamente. A UI converte essa massa para a convenção do inventário: 10 mass units = 1 lb e 22.0462262185 mass units = 1 kg.
