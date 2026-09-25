# SP_ORG_Items 0.12-C.4 — Teste

Execute **SP_ORG_Items 0.12-C.4 — Catalog Viewport Containment + Scroll UX 506** duas vezes na mesma sessão.

Esperado: BASE C.3 = 500/500, C.4 = 6/6, FAIL=0, CUMULATIVO=506/506.

Smoke manual:
- nenhum ListBox/scroll legado do Catálogo deve aparecer sobre Meus Kits ou qualquer outro painel;
- Catálogo mantém botões reais ←/→ por linha;
- só existe uma barra vertical visível: ▲ = subir 6 itens, thumb = arraste/posição, ▼ = descer 6 itens; o trilho permite saltos maiores;
- wheel continua fluido e CATALOG_FOCUSED;
- X/Delete do Equipment continua imediato.
