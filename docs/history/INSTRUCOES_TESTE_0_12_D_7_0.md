# Teste manual — SP_ORG_Items 0.12-D.7.0

## 1. Gate automático
Execute **SP_ORG_Items 0.12-D.7.0 — Privados/Públicos 627**. Esperado: **627/627**.

## 2. Layout
- Abra a interface e confirme, abaixo da busca de `MEUS KITS DE ITENS`, os botões `PRIVADOS` e `PÚBLICOS`.
- A lista deve continuar alinhada/simétrica com os demais painéis.

## 3. Privado -> Público
1. Em `PRIVADOS`, selecione um kit salvo.
2. Clique `PUBLICAR`.
3. Abra `PÚBLICOS`: o kit deve aparecer com nome, quantidade, peso e autor/origem.
4. Altere o kit privado e salve. O snapshot público **não** deve mudar automaticamente.
5. Clique `PUBLICAR` novamente: agora o snapshot público deve ser atualizado sem duplicar a publicação.

## 4. Público -> Privado
1. Na aba `PÚBLICOS`, selecione o snapshot.
2. Clique `SALVAR NO PRIVADO`.
3. A interface deve voltar para `PRIVADOS`, com uma nova cópia persistida e ID independente.
4. O Rascunho que já estava aberto não deve ser substituído silenciosamente.

## 5. Read-only público
- Clicar um kit público não deve abrir/substituir o `KIT SELECIONADO`.
- Tentar iniciar DnD de Meus Kits na aba pública deve ser bloqueado com mensagem amigável.

## 6. Regressão
Confirme rapidamente: DnD privado, auto-Rascunho por drop/setas, tooltips, ghost, Catalog -> Equipment obedecendo `Mostrar`, +/−/qtd/X, capacidade, peso, Salvar/Descartar/Limpar e header.

## 7. RPT
Se houver falha, envie a partir do primeiro `[FAIL]`. FAIL-FAST posteriores normalmente são consequência do primeiro gate quebrado.
