use clinica;

SELECT * FROM pacientes;
select * from medicos;
select * from consultas;

-- Consultas agendadas
SELECT *
FROM consultas
WHERE status_consulta = 'Agendada';

-- Paciente, médico e data da consulta
SELECT
    p.nome AS paciente,
    m.nome AS medico,
    c.data_consulta
FROM consultas c
JOIN pacientes p ON c.paciente_id = p.id
JOIN medicos m ON c.medico_id = m.id;

-- Quantidade de pacientes
SELECT COUNT(*) AS total_pacientes
FROM pacientes;

-- Quantidade de consultas por médico
SELECT
    m.nome,
    COUNT(*) AS total_consultas
FROM consultas c
JOIN medicos m ON c.medico_id = m.id
GROUP BY m.nome;

-- Médicos do que mais atendeu para o que menos atendeu
SELECT
    m.nome,
    COUNT(*) AS total_consultas
FROM consultas c
JOIN medicos m ON c.medico_id = m.id
GROUP BY m.nome
ORDER BY total_consultas DESC;

-- Consultas em determinado período
SELECT *
FROM consultas
WHERE data_consulta BETWEEN '2026-10-01' AND '2026-10-31';

-- Consultas e seus motivos

SELECT
    p.nome AS paciente,
    m.nome AS medico,
    c.motivo_consulta,
    c.data_consulta
FROM consultas c
JOIN pacientes p ON c.paciente_id = p.id
JOIN medicos m ON c.medico_id = m.id;


-- Paciente, médico, data e motivo da consulta

SELECT
    p.nome AS paciente,
    m.nome AS medico,
    c.data_consulta,
    c.motivo_consulta,
    c.status_consulta
FROM consultas c
JOIN pacientes p
ON c.paciente_id = p.id
JOIN medicos m
ON c.medico_id = m.id;