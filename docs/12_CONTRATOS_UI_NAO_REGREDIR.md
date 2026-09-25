# Contratos de UI e comportamento que não devem regredir

- Catálogo contínuo, virtualizado, sem paginação por chunks.
- Search/categories e ordenação previsível por displayName/className.
- Catálogo: esquerda -> Draft; direita -> equipamento atualmente exibido em `Mostrar`.
- Conteúdo do Equipamento: linha `←, imagem, nome, -, quantidade, +, X`.
- X remove imediatamente; quantidade 0 mantém confirmação explícita conforme contrato atual.
- DnD aceita áreas amplas dos painéis, não somente uma faixa estreita.
- Ghost acompanha mouse em runtime e não participa do hit-test.
- Tooltip existe, é pass-through e some durante drag.
- wheel guard impede menu vanilla interferir enquanto interface está ativa.
- `Onde aplicar o kit?` é authority de Whole-Kit.
- `Mostrar` é authority das ações físicas diretas.
- Meus Kits: PRIVADOS/PÚBLICOS; público read-only; cópia público->privado cria novo ItemKit.
- PUBLICAR atualiza snapshot do mesmo source/author, não duplica.
- Header de carga usa semântica nativa global e torna sobrecarga explícita.
- capacidade de U/C/M é métrica separada.
- sons de mover/copiar/remover/publicar devem permanecer coerentes.
