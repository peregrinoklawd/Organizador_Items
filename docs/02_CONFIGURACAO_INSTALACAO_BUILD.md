# Configuração, instalação e build

## Dependências

O Nexus exige `A3_Functions_F`. Items exige `A3_Functions_F` e `ServoPeregrino_Organizador_Nexus`. Os dois PBOs devem ser carregados juntos nesta build.

## Instalação local do Packaging R2

1. Fechar Arma 3 e Launcher.
2. Desativar/remover versões locais antigas do SP_ORG.
3. Copiar `release/@SP_ORG_Items_0_13_A_R2` para sua pasta de mods locais.
4. Adicionar essa pasta como **Local Mod** no Launcher.
5. Copiar `release/MPMissions/SP_ORG_Items_0_13_A_Multiplayer_Lab_8Slots_R3.VR.pbo` para `Arma 3/MPMissions`.
6. Iniciar o jogo e hospedar a missão R3.

Todos os clientes e o host/servidor precisam carregar a **mesma build** do addon.

## Teste de carregamento antes de testar funcionalidade

O primeiro gate de qualquer build PBO é o RPT. Se existir:

```text
Unable to open ...ServoPeregrino_Organizador_Items.pbo
Unable to open ...ServoPeregrino_Organizador_Nexus.pbo
```

não investigue UI, `remoteExec`, HOME ou biblioteca: o addon sequer foi montado.

## Empacotamento recomendado

Para builds futuras, preferir **Arma 3 Tools / Addon Builder** ou outra ferramenta PBO amplamente validada. O projeto já teve uma falha real causada por empacotamento PBO produzido por ferramenta customizada. Evite “packer caseiro” como caminho de release sem teste de carga no engine.

Fonte de cada PBO:

```text
repo/addons/ServoPeregrino_Organizador_Nexus/
repo/addons/ServoPeregrino_Organizador_Items/
```

Preservar `$PBOPREFIX$` e paths absolutos usados em `CfgFunctions`.

## Ordem mínima de validação de um novo PBO

1. PBO abre no Arma sem `Unable to open`.
2. `CfgPatches` aparece no config.
3. `CfgFunctions` registra `*_fnc_initialize` e `Items_fnc_openInterface`.
4. Nexus inicializa.
5. Items valida Nexus e inicializa.
6. UI abre.
7. smoke SP.
8. smoke MP.

## CfgRemoteExec 0.13-A

Somente dois endpoints novos são expostos:

```cpp
ServoPeregrino_Organizador_Items_fnc_serverHandlePublicLibraryRequest
    allowedTargets = 2; // server

ServoPeregrino_Organizador_Items_fnc_clientReceivePublicLibraryResult
    allowedTargets = 1; // clients
```

Não ampliar whitelist sem necessidade explícita.

## Assinatura e distribuição

A build atual é de desenvolvimento e não está assinada. Para distribuição pública/servidores com `verifySignatures`, gerar chave privada de build, `.bikey` público e `.bisign` para cada PBO. Não versionar chave privada no Git.

## Workshop

Só publicar no Workshop depois que o PBO carregar, o smoke 0.13-A passar e a estratégia de assinatura/versionamento estiver definida. Durante desenvolvimento, distribuição manual mantém todos na mesma build e evita atualização automática no meio de um teste.
