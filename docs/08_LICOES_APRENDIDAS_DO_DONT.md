# Lições aprendidas — o que fazer e o que não fazer

## FAZER

- partir sempre da **última baseline real**; delta pequeno e rastreável;
- preservar source + PBO + hash + status de homologação juntos;
- validar PBO no engine antes de diagnosticar função/UI;
- ler o início do RPT: erros de mount/config podem invalidar todo o resto do teste;
- separar `applicationTarget` de `equipmentView`;
- manter player load e container capacity como métricas diferentes;
- preservar EXACT de magazines parciais;
- fazer dry-run e fingerprint antes de commit físico;
- usar lock/rollback/post-validate para mutações físicas;
- preferir focused refresh à reconstrução FULL da UI;
- criar ghost DnD em runtime/top layer e pass-through;
- esconder tooltip durante drag;
- usar servidor como fonte de identidade/autoridade em fluxos multiplayer;
- manter whitelist RemoteExec mínima;
- usar missão como laboratório e addon como produto;
- registrar decisões arquiteturais e dívidas aceitas.

## NÃO FAZER

- não reconstruir versão antiga “de memória”;
- não trocar runtime saudável só para satisfazer teste histórico frágil;
- não congelar gates em strings, IDCs ou detalhes internos desnecessários;
- não fazer UI de direct physical action obedecer `Onde aplicar o kit?`; ela obedece `Mostrar`;
- não usar `ANY` como target físico final de commit;
- não tratar public library SESSION como persistência permanente;
- não confiar em autor/UID enviados pelo cliente;
- não expor funções server-only/client-only sem CfgRemoteExec restritivo;
- não publicar Workshop antes de PBO load + smoke MP fechados;
- não commitar chave privada de assinatura no Git;
- não presumir que “missão carregou” significa “addon carregou”;
- não usar packer PBO customizado em release sem validação no Arma;
- não deletar compatibilidade interna `preferredTarget` apenas porque ela sumiu da UI;
- não fazer cleanup incidental de superfícies/IDs legados enquanto uma entrega tem escopo diferente.

## Falhas que ensinaram mais

- Mission.sqm mal emitido -> lobby sem slots; corrigido com formato Eden compatível e `isPlayable`.
- R2 slots funcionaram -> provou que o problema de UI era outro.
- R3 hint apareceu mas openInterface nil -> provou initPlayerLocal da missão, não addon.
- RPT mostrou `Unable to open` dos PBOs -> causa raiz Packaging R1.

A sequência acima é um bom modelo de diagnóstico: **provar camada por camada**, evitando corrigir a camada errada.
