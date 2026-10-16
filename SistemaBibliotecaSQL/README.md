📚 Sistema Biblioteca SQL
Projeto desenvolvido para praticar modelagem de banco de dados relacionais utilizando MySQL.

Objetivo
Simular o funcionamento de uma biblioteca, registrando livros, usuários, empréstimos e devoluções.

Estrutura do Banco:
    Livros:
        id
        titulo
        autor
        categoria
        ano_publicacao

    Usuários:
        id
        nome
        email

    Empréstimos:
        id
        usuario_id
        livro_id
        data_emprestimo
        data_devolucao


Consultas Implementadas:
    Listagem de livros
    Listagem de usuários
    Listagem de empréstimos
    Quais livros estão emprestados
    Quem possui mais empréstimos
    Quantidade de livros por categoria
    Livros ainda emprestados
    Livros já devolvidos


Tecnologias:
    SQL
    MySQL
    DBeaver
    Visual Studio Code


Conceitos Praticados:
    CREATE DATABASE
    CREATE TABLE
    PRIMARY KEY
    FOREIGN KEY
    INSERT INTO
    SELECT
    INNER JOIN
    COUNT
    GROUP BY
    ORDER BY
    IS NULL


    
👩‍💻 Autora
Talita Marroni

GitHub: TalitaMarronidev
Curso: Análise e Desenvolvimento de Sistemas