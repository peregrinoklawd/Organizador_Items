# Como continuar com outra IA / outro chat

## Instrução

Anexe **este ZIP inteiro**. Depois use um prompt semelhante ao abaixo.

```text
Estamos continuando o projeto Arma 3 Servo Peregrino Organizador (SP_ORG), módulos Nexus + Items.
O ZIP anexado é o Source of Truth em 25/09/2026. Leia primeiro README.md, docs/00_STATUS_ATUAL.md,
docs/01_ARQUITETURA.md, machine/PROJECT_STATE.json e docs/08_LICOES_APRENDIDAS_DO_DONT.md.

Regras obrigatórias:
- nunca reconstruir a partir de memória se existe baseline no ZIP;
- toda entrega deve partir do source/release imediatamente anterior;
- preservar contratos congelados da 0.12 FINAL;
- distinguir versão funcional de revisão de empacotamento;
- não corrigir gates históricos 516/523 mudando runtime saudável sem regressão real;
- Application Target e Equipment View são authorities diferentes;
- não chamar 0.13-A de persistente/JIP: PÚBLICOS ainda é SESSION-scoped;
- antes de qualquer feature nova, validar o Addon Packaging R2 dentro do Arma.

Estado atual:
0.12 FINAL homologada manualmente. 0.13-A implementada. Mission Lab R3 carrega e os slots funcionam.
Packaging R1 falhou porque os PBOs não abriram. Packaging R2 foi reempacotado com mesmos fontes e está pendente de validação runtime.
Próximo passo: carregar R2, checar RPT, abrir UI com HOME, depois testar autoridade multiplayer com amigos.
Somente depois seguir para 0.13-B JIP & State Reconciliation.
```

## Arquivos que uma IA deve consultar para alterações

- fonte atual: `repo/addons/...`;
- missão: `repo/missions/...R3.VR`;
- API/inventário: `machine/FUNCTION_INDEX.json`;
- call graph: `machine/CALL_GRAPH_EDGES.csv`;
- estado: `machine/PROJECT_STATE.json`;
- docs históricas: `history/raw_project_docs/` quando for preciso entender uma decisão antiga.

## Regra de provenance

Antes de gerar um novo ZIP/PBO, registrar:
- baseline usada;
- arquivos alterados;
- razão;
- hashes;
- testes estáticos;
- testes runtime realmente executados vs ainda pendentes.
