use biblioteca;

select * from livros;
select * from usuarios;
select * from emprestimos;


-- Mostra quais livros estão emprestados
SELECT
    livros.titulo,
    usuarios.nome,
    emprestimos.data_emprestimo
FROM emprestimos
INNER JOIN livros
ON emprestimos.livro_id = livros.id
INNER JOIN usuarios
ON emprestimos.usuario_id = usuarios.id;


-- Mostra quem possui mais emprestimos
SELECT
    usuarios.nome,
    COUNT(*) AS quantidade_emprestimos
FROM emprestimos
INNER JOIN usuarios
ON emprestimos.usuario_id = usuarios.id
GROUP BY usuarios.nome
ORDER BY quantidade_emprestimos DESC;


-- Mostra a quantidade de livros por categoria
SELECT
    categoria,
    COUNT(*) AS quantidade_livros
FROM livros
GROUP BY categoria;

-- Mostra os livros que ainda estão emprestados
SELECT
    livros.titulo,
    usuarios.nome
FROM emprestimos
JOIN livros
ON emprestimos.livro_id = livros.id
JOIN usuarios
ON emprestimos.usuario_id = usuarios.id
WHERE data_devolucao IS NULL;

-- Mostra os livros que já foram devolvidos

SELECT
    livros.titulo,
    usuarios.nome,
    data_devolucao
FROM emprestimos
JOIN livros
ON emprestimos.livro_id = livros.id
JOIN usuarios
ON emprestimos.usuario_id = usuarios.id
WHERE data_devolucao IS NOT NULL;

-- Quantidade de livros atualmente emprestados

SELECT COUNT(*) AS livros_emprestados
FROM emprestimos
WHERE data_devolucao IS NULL;