# SP_ORG_Items — Roadmap após 0.12 FINAL

## Baseline oficial

**0.12 FINAL — Integration Freeze** é a baseline oficial encerrada da família 0.12.

Ela herda integralmente a 0.12-D.7.4 aprovada manualmente. Não reconstrói código antigo, não reabre Whole-Kit/EXACT/DnD e não altera Application Engine, Repository/Storage ou bibliotecas.

## Estado da 0.12

- 0.9.3: Physical Transaction Engine / baseline histórica.
- 0.10: Whole-Kit, EXACT e Full DnD.
- 0.11: Physical UI, massa/capacidade, controles, áudio e refresh focal.
- 0.12-A/B/C: header/layout, Equipment UX, Catálogo contínuo, DnD por painel e ghost.
- 0.12-D.1..D.6.4: polish player-facing, tooltips, capacidade, Equipment View Authority, Auto Draft e arrow parity.
- 0.12-D.7.0..D.7.3: biblioteca PRIVADOS/PÚBLICOS session-scoped, snapshots, seleção, áudio, badges, ordenação e autoridade correta de `Mostrar/equipmentView`.
- 0.12-D.7.4: Player Load Semantics + Historical Gate Hardening; sobrecarga explícita e semântica global/container separada.
- **0.12 FINAL: freeze da baseline D.7.4 homologada manualmente.**

## Dívida técnica conhecida aceita

Os gates automáticos históricos **516 e 523** da 0.12-C.6 podem falhar e acionar fail-fast antes dos checkpoints mais novos. O comportamento DnD correspondente foi aprovado manualmente. Por decisão explícita de continuidade, a 0.12 FINAL não altera runtime nem reescreve esses gates apenas para obter um relatório integralmente verde.

Essa dívida deve ser tratada futuramente apenas se houver necessidade real de restaurar a suíte cumulativa completa como critério de release.

## 0.13 — Hardening + Public Integration

Marco iniciado pela **0.13-A — Server Authority Foundation**. Escopo da família:
- biblioteca pública autoritativa/persistente;
- autoridade de servidor;
- JIP e reconciliação de estado;
- concorrência e permissões;
- stale fingerprints e locks;
- recovery de storage;
- robustez em sessões longas e modsets grandes;
- evolução dos contratos Nexus;
- integração Items / Weapons / Equipment / Sets.

A 0.13 deve começar **sobre a 0.12 FINAL**, nunca sobre candidata antiga.

## 1.0

- contratos públicos congelados;
- documentação de release;
- baseline estável para distribuição e evolução controlada.
