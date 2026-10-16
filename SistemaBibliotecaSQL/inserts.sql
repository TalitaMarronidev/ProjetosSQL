use biblioteca;

INSERT INTO livros (titulo, autor, categoria, ano_publicacao)
values('Dom Casmurro', 'Machado de Assis', 'Romance', 1899),
	  ('O Hobbit', 'J.R.R. Tolkien', 'Fantasia', 1937),
      ('Harry Potter', 'J.K. Rowling', 'Fantasia', 1997);

insert into usuarios (nome, email)
values('Talita Marroni', 'talitamarroni@gmail.com'),
	  ('Ana Souza', 'ana@email.com'),
	  ('Joao Silva', 'joao@email.com');

insert into emprestimos (usuario_id, livro_id, data_emprestimo)
values(1, 2, '2026-10-16'),
	  (2, 1, '2026-10-16');