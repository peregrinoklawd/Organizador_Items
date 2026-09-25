# Servo Peregrino Organizador — Nexus + Items

Fonte atual: Items **0.13-A** (`0.13.0.1-a-server-authority-foundation`) e Nexus **0.1.1**.

Este diretório foi preparado para controle de versão. Leia a documentação do pacote de continuidade antes de alterar contratos.

## Estrutura

- `addons/ServoPeregrino_Organizador_Nexus`
- `addons/ServoPeregrino_Organizador_Items`
- `missions/SP_ORG_Items_0_13_A_Multiplayer_Lab_8Slots_R3.VR`

## Estado

0.13-A source está implementada; Packaging R2 está pendente de validação no Arma. Não iniciar 0.13-B antes desse gate.

## Source of Truth / continuidade

Este repositório é a fonte principal para continuidade do SP_ORG.

Antes de alterar runtime, leia `docs/00_STATUS_ATUAL.md`, `docs/01_ARQUITETURA.md`, `docs/08_LICOES_APRENDIDAS_DO_DONT.md`, `docs/09_ROADMAP_E_PROXIMO_PASSO.md`, `docs/10_CONTINUAR_COM_IA.md` e `machine/PROJECT_STATE.json`.

Nunca reconstrua uma entrega por memória. Trabalhe por delta sobre a baseline registrada e preserve contratos homologados.
