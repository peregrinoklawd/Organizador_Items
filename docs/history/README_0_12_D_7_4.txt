SP_ORG_Items 0.12-D.7.4 — Player Load Semantics & Historical Gate Hardening

Baseline
- 0.12-D.7.3 R2 — 0.12.0.26-d7-3-r2-automatic-test-runner-hotfix.
- A D.7.4 foi produzida como delta direto dessa baseline.

Versão
- Display: 0.12-D.7.4
- Semantic: 0.12.0.27
- Build: 0.12.0.27-d7-4-player-load-semantics-historical-gate-hardening
- Novos gates: 647..654 (8)
- Alvo cumulativo: 654/654

Problema 1 — semântica da carga global
O header antigo usava loadAbs do jogador dividido por maxSoldierLoad, mas limitava o percentual exibido a 100%. Quando o loadout real excedia esse limite global, o texto podia apresentar peso usado maior que o máximo enquanto o percentual permanecia artificialmente em 100%, confundindo carga global com capacidade rígida de container.

Correção
- loadAbs/load/maxSoldierLoad continuam sendo a autoridade para a carga GLOBAL do jogador.
- O ratio bruto é preservado para diagnóstico.
- Apenas a largura visual da barra é limitada ao trilho.
- Acima do limite, o header mostra explicitamente `100%+ · SOBRECARGA`.
- O tooltip informa carga, limite, excesso, percentual bruto e escopo da métrica.
- A capacidade individual de Uniforme/Colete/Mochila continua separada e continua usando loadAbs do container + maximumLoad.
- Nenhuma capacidade física do engine é modificada.

Problema 2 — gate histórico C.4
O gate ITEMS-0.12-502 ainda congelava a antiga composição visual com ▲ + slider + ▼. A interface atual preserva os controles antigos fora da tela por compatibilidade e usa wheel + slider contínuo como navegação visível.

Correção
- 502 agora protege o contrato atual: slider contínuo, wheel, legado offscreen e scrollbar interna invisível.
- 505 confirma isso em runtime.
- Nenhum gate foi apagado.

Problema 3 — gates D.7.x congelados em versão intermediária
Runners D.7.1/D.7.2/D.7.3 ainda poderiam falhar apenas porque DISPLAY_VERSION avançou para D.7.4.

Correção
- A família histórica D.7 valida o prefixo `0.12-D.7.` em vez de congelar uma versão intermediária.
- Os contratos funcionais de cada gate permanecem intactos.

Preservação comprovada por diff local
- functions/application: idêntico à D.7.3 R2.
- functions/library: idêntico à D.7.3 R2.
- functions/storage: idêntico à D.7.3 R2.
- DnD/ghost, Whole-Kit, EXACT, Repository e mutação física não foram refatorados nesta entrega.

Limite da validação local
O ambiente de construção não possui o runtime/parser do Arma 3. A validação estática foi executada, mas o gate definitivo é o RPT real do jogo com 654/654 e o smoke manual.
