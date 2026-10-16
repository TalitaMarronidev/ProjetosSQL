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
