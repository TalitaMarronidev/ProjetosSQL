USE biblioteca;

INSERT INTO livros (titulo, autor, categoria, ano_publicacao)
VALUES
('Dom Casmurro', 'Machado de Assis', 'Romance', 1899),
('O Hobbit', 'J.R.R. Tolkien', 'Fantasia', 1937),
('Harry Potter', 'J.K. Rowling', 'Fantasia', 1997);

INSERT INTO usuarios (nome, email)
VALUES
('Talita Marroni', 'talitamarroni@gmail.com'),
('Ana Souza', 'ana@email.com'),
('Joao Silva', 'joao@email.com');

INSERT INTO emprestimos
(usuario_id, livro_id, data_emprestimo, data_devolucao)
VALUES
(1, 2, '2026-10-16', NULL),
(2, 1, '2026-10-16', '2026-10-30');