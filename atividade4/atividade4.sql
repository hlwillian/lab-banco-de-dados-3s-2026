-- 1. Livros da autora 'J.K. Rowling'
SELECT l.*
FROM Livro l
JOIN Autor a ON l.id_autor = a.id
WHERE a.nome = 'J.K. Rowling';

-- 2. Livros da categoria 'Filosofia'
SELECT l.*
FROM Livro l
JOIN Categoria c ON l.id_categoria = c.id
WHERE c.nome = 'Filosofia';

-- 3. Alterar 'Filosofia' para 'Censurado'
UPDATE Categoria
SET nome = 'Censurado'
WHERE nome = 'Filosofia';

-- 4. Deletar livros da categoria 'Censurado'
DELETE FROM Livro
WHERE id_categoria = (
    SELECT id FROM Categoria WHERE nome = 'Censurado'
);
