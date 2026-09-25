# 0.12-D.2 — Header Layout + Friendly Language + Runner Hardening

## Motivo
O teste da D.1 mostrou dois pontos: o header ainda ficava excessivamente distribuído em ultrawide e a interface ainda expunha termos que fazem sentido para desenvolvimento, mas não para o jogador. O RPT também revelou que gates históricos dependiam de textos antigos e que mods externos podiam causar drift assíncrono restrito aos slots de armas durante a suíte longa.

## Header
O header passa a usar duas linhas compactas:

1. identidade: título, Operador, Unidade, slot futuro e Fechar;
2. operação: `Adicionar em`, `Mostrando`, Carga e barra de carga.

A mudança é estritamente de layout/apresentação.

## Linguagem
Internamente permanecem intactos conceitos como Draft, Application Target, Equipment View, EXACT, commandId e códigos `ITEMS_*`.
Na interface, esses conceitos são traduzidos para ações compreensíveis pelo jogador.

## Runner hardening
Os IDs históricos são preservados.
- 234 acompanha `Adicionar em` + `Mostrando`;
- 304/310 validam o estado de repouso atual do DnD em vez de uma frase antiga literal;
- 213/347 continuam protegendo contra mutação do jogador, mas podem diagnosticar drift externo restrito exclusivamente aos índices de armas `[0,1,2]` quando o contrato testado é não físico/isolado;
- alterações em uniforme/colete/mochila continuam sendo FAIL.

## Congelado
Não há mudança intencional em:
- Application Engine;
- Catálogo/CONFIG_ALL;
- Domain/ItemKit/ItemEntry;
- Draft Service;
- Inventory/capture;
- Storage;
- Nexus;
- autoridade DISPLAY_POINTER do DnD;
- hit-test dos painéis;
- runtime drag ghost;
- EXACT.
