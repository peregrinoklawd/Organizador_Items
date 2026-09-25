# SP_ORG_Items 0.12-D.7.4 — roteiro de validação

## 1. Automático — obrigatório primeiro

1. Coloque a pasta da missão D.7.4 no mesmo fluxo usado nas entregas anteriores.
2. Abra a missão e execute **SP_ORG_Items 0.12-D.7.4 — Player Load + Gates 654**.
3. No RPT, confirme:
   - ausência de `Error in expression`, `Error Faltante`, `Undefined variable` ou erro de config relacionado à entrega;
   - `ITEMS-0.12-502` PASS;
   - `ITEMS-0.12-505` PASS;
   - D.7.1/D.7.2/D.7.3 fechando normalmente com a versão D.7.4;
   - `ITEMS-0.12-647` até `ITEMS-0.12-654` PASS;
   - resumo final: **CUMULATIVO=654/654**.

Se a cadeia parar antes de 647, enviar o RPT completo: o fail-fast identifica qual baseline histórica ainda bloqueou a execução.

## 2. Carga global do header

### Cenário normal
- Abra o Organizador com um loadout comum abaixo do limite global.
- Confirme texto `Carga: usado / máximo kg - N%`.
- Confirme barra proporcional e nunca maior que o trilho.
- Passe o mouse no texto/barra e confirme tooltip explicando que a métrica inclui armas, itens vinculados e conteúdo de U/C/M.

### Cenário pesado/sobrecarga, se o modset permitir
- Use o mesmo loadout que anteriormente fazia o peso usado ultrapassar o máximo do header.
- Confirme que o peso real continua sendo informado.
- Confirme `100%+ · SOBRECARGA`.
- Confirme que a barra visual para no fim do trilho, sem invadir outros elementos.
- Confirme no tooltip o excesso e o percentual bruto.

### Capacidade de U/C/M
- Alterne `Mostrar` entre Uniforme, Colete e Mochila.
- Confirme que usada/total/livre de cada container continua própria daquele container.
- A carga global do header não deve substituir a capacidade de U/C/M.

## 3. Smoke de não regressão — obrigatório

- DnD: item acompanha o mouse (ghost) e pode ser solto na área válida dos painéis.
- Catálogo: wheel e slider contínuo funcionam; nenhuma UI antiga vaza sobre Meus Kits.
- Setas: esquerda adiciona ao Kit Selecionado; direita altera o equipamento de `Mostrar`.
- `Onde aplicar o kit?` continua governando APLICAR/REMOVER/SUBSTITUIR e não a seta direita do Catálogo.
- Equipment: `- / quantidade / + / X` continuam funcionando; X permanece imediato.
- Tooltips continuam presentes.
- COPIAR/PUBLICAR continuam com feedback sonoro; badges COPIADO/PUBLICADO continuam transitórios.
- PRIVADOS/PÚBLICOS continuam selecionáveis e pesquisáveis.
- Whole-Kit/EXACT: smoke simples de aplicar/remover/substituir sem regressão perceptível.

## 4. Retorno esperado

Envie:
- RPT completo;
- resultado manual da carga normal e, se disponível, da sobrecarga;
- qualquer regressão visual/funcional com screenshot e passos para reproduzir.
