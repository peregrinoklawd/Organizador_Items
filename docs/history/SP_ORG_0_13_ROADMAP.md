# SP_ORG_Items — Roadmap 0.13

## Baseline
**0.12 FINAL — Integration Freeze** permanece congelada e homologada. A família 0.13 sempre parte dela.

## 0.13-A — Server Authority Foundation
- servidor passa a ser autoridade da biblioteca pública;
- request cliente → servidor e callback servidor → cliente;
- identidade do autor derivada pelo servidor;
- réplica pública continua SESSION-scoped;
- sem alteração do Repository privado ou motor físico.

## 0.13-B — JIP & State Reconciliation
- sincronização/reconciliação explícita para join-in-progress;
- revisão autoritativa e detecção de estado stale;
- refresh/recovery quando cliente perde atualização;
- contrato de bootstrap de biblioteca pública.

## 0.13-C — Server Persistence & Recovery
- persistência controlada da biblioteca pública no servidor;
- schema/versionamento/migração;
- last-good/recovery;
- restart de missão/servidor sem perda indevida.

## 0.13-D — Permissions, Concurrency & Moderation
- ACL/permissões;
- update/delete somente por autoridade permitida;
- concorrência e locks;
- rate limit e proteção contra requests inválidos/repetidos;
- moderação/remoção server-side.

## 0.13-E — Long-session & Large-modset Hardening
- soak/session longevity;
- limites e pruning;
- telemetria de rede;
- comportamento com catálogos/modsets grandes;
- recovery de requests/timeout/retry.

## 0.13-F — Nexus Public Contracts / Cross-module Integration
- contratos públicos Nexus para biblioteca/kit snapshot;
- integração controlada Items / Weapons / Equipment / Sets;
- ownership de domínio e compatibilidade entre módulos.

## 0.13 FINAL
- regressão e smoke MP;
- congelamento dos contratos de 0.13;
- documentação de migração/operacional.

## 1.0
- contratos públicos congelados;
- release estável para distribuição;
- evolução posterior somente por versões compatíveis/migrações explícitas.
