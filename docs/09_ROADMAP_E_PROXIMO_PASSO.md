# Roadmap e próximo passo

## Gate imediato — não é feature

**Validar Addon Packaging R2**. Enquanto o engine não montar os PBOs, não iniciar trabalho funcional 0.13-B.

## Fechar 0.13-A

Depois do load gate:

- smoke UI;
- host + amigos;
- cliente -> servidor -> clientes;
- republish/revision;
- dois autores;
- regressão curta de DnD, Whole-Kit, EXACT, Equipment, áudio e carga.

## 0.13-B — JIP & State Reconciliation

- bootstrap explícito para jogador que entra depois;
- revisão autoritativa;
- detectar cliente stale;
- refresh/recovery de state perdido.

## 0.13-C — Server Persistence & Recovery

- persistência pública controlada no servidor;
- schema/versioning/migrations;
- last-good/recovery;
- restart sem perda indevida.

## 0.13-D — Permissions, Concurrency & Moderation

- ACL;
- update/delete autorizados;
- locks/concurrency;
- rate limit e proteção contra requests inválidos/repetidos;
- moderação server-side.

## 0.13-E — Long-session & Large-modset Hardening

- soak;
- pruning/limits;
- telemetria de rede;
- grandes catálogos/modsets;
- timeout/retry/recovery.

## 0.13-F — Nexus Public Contracts / Cross-module Integration

- contratos públicos via Nexus;
- integração Items / Weapons / Equipment / Sets;
- ownership de domínio e compatibilidade.

## 0.13 FINAL

Freeze MP e documentação/migração.

## 1.0

Contratos públicos congelados e release estável.
