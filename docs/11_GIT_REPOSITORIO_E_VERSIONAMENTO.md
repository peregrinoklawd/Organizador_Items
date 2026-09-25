# Git, repositório e versionamento

## Diretório para subir

Use `repo/` como raiz inicial do repositório. Ele já contém addons, missão, README, CONTRIBUTING, .gitignore e templates.

## Branches sugeridos

```text
main       releases/freeze homologados
develop    integração corrente
feature/*  uma mudança pequena por vez
hotfix/*   regressões comprovadas
```

## Tags sugeridas

- `items-0.12-final`
- `items-0.13-a-source`
- `items-0.13-a-packaging-r2` somente depois de homologar o carregamento do PBO.

## Binaries

PBOs estão em `release/` deste pacote de continuidade. Em Git, prefira anexar binários a **Releases** em vez de acumular cada PBO no histórico principal. Código fonte deve ser a autoridade.

## Licença

Nenhuma licença foi escolhida neste snapshot. Não adicionar MIT/GPL/etc. automaticamente. Decida conscientemente antes de publicar o repositório. Veja `repo/LICENSE_NOT_SELECTED.md`.

## Commits

Mensagens úteis:

```text
feat(items): add server-authoritative public publish request
fix(packaging): rebuild pbo with validated addon builder
fix(mission): add 8 playable MP slots
chore(tests): document accepted historical gate debt
```
