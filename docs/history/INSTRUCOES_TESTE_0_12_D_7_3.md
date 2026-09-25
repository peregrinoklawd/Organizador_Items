# SP_ORG_Items 0.12-D.7.3 — Teste

## Automático
Execute o runner `ServoPeregrino_Organizador_Items_fnc_runDelivery0_12CheckpointD73Tests`.
Esperado: **646/646**.

## Manual
1. Abra a interface e confirme que os testes anteriores continuam estáveis.
2. Em **Onde aplicar o kit?**, selecione UNIFORME. Em **Mostrar**, selecione COLETE. No Catálogo, clique no botão da direita/amarelo de um item. O item deve entrar no **COLETE**, não no uniforme. Repita invertendo os destinos.
3. Publique um kit privado. Deve aparecer **PUBLICADO** e tocar o som de confirmação.
4. Depois de PUBLICADO/COPIADO, faça outra ação (clique, busca, botão ou início de arraste). O badge deve desaparecer; um novo publicar/copiar deve exibir o novo badge normalmente.
5. Abra **MÉDICO** sem busca e role a lista. A ordem deve ser alfabética/previsível. Pesquise por `DEA` para confirmar que `DEA Serie-X` continua categorizado como Médico.
6. Verifique a legenda do catálogo: `Mostrando X a Y de Z itens` e ausência de textos explicativos com caracteres de seta sobrepostos.

Se houver falha, envie o RPT a partir da abertura da missão e descreva o cenário manual executado.
