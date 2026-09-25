# Incidente: conversão para addon / PBO não carregava

## Sintoma

Missão R3 carregava, slots funcionavam e o hint do `initPlayerLocal` aparecia, mas HOME/ação informava que SP_ORG Items não estava disponível.

## Evidência

RPT: `evidence/RPT_2026-09-25_PBO_load_failure.txt`.

Logo no boot o Arma registrou `Unable to open` para os PBOs Nexus e Items. Portanto CfgPatches/CfgFunctions não eram montados e `openInterface` ficava nil.

## Diagnóstico correto

Falha de **PBO packaging/mount**, não:
- mission.sqm;
- playable slots;
- addAction;
- HOME handler;
- lógica da interface;
- remoteExec.

## Correção produzida

Packaging R2 reempacotou os mesmos fontes. Nenhum SQF funcional foi alterado. Status: **pendente de teste no engine**.

## Lição

Sempre validar o mount do PBO antes de depurar camadas superiores. Uma missão pode carregar corretamente mesmo quando o addon exigido pelo objetivo do teste não carregou, se o mission config não o declarar como required addon rígido.
