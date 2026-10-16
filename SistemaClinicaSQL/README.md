🏥 Sistema Clínica SQL
Projeto desenvolvido para praticar modelagem de banco de dados relacionais utilizando MySQL.

📋 Objetivo
Simular o funcionamento de uma clínica médica através de um banco de dados, aplicando conceitos de modelagem, relacionamentos entre tabelas e consultas SQL.

🗄️ Estrutura do Banco de Dados
O banco é composto por três tabelas principais:

Pacientes: armazena os dados dos pacientes cadastrados.

     id
    - nome
    - cpf
    - telefone

Médicos: armazena os dados dos médicos da clínica.

    - id
    - nome
    - especialidade

Consultas: registra as consultas realizadas ou agendadas.

    - id
    - paciente_id
    - medico_id
    - data_consulta
    - status_consulta
    - motivo_consulta


🔗 Relacionamentos
Um paciente pode possuir várias consultas.
Um médico pode realizar várias consultas.
Cada consulta está associada a um paciente e a um médico.


📊 Consultas Implementadas

    Consultas Básicas
    Listar todos os pacientes
    Listar todos os médicos
    Listar todas as consultas
    Filtros
    Consultas agendadas
    Consultas em determinado período
    Relatórios
    Quantidade de pacientes cadastrados
    Quantidade de consultas por médico
    Ranking de médicos por quantidade de atendimentos
    Consultas com JOIN
    Paciente, médico e data da consulta
    Consultas com seus respectivos motivos
    Paciente, médico, data, motivo e status da consulta


🛠️ Tecnologias Utilizadas
    SQL
    MySQL
    DBeaver
    Visual Studio Code

📚 Conceitos Praticados
    CREATE DATABASE
    CREATE TABLE
    PRIMARY KEY
    FOREIGN KEY
    AUTO_INCREMENT
    INSERT INTO
    SELECT
    WHERE
    JOIN
    COUNT
    GROUP BY
    ORDER BY
    BETWEEN


👩‍💻 Autora
Talita Marroni

GitHub: TalitaMarronidev
Curso: Análise e Desenvolvimento de Sistemas