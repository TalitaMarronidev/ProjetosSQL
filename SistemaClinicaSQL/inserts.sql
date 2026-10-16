use clinica;

-- Pacientes
INSERT INTO pacientes (nome, cpf, telefone) VALUES
('Ana Silva', '111.111.111-11', '(47) 99999-1111'),
('Carlos Souza', '222.222.222-22', '(47) 99999-2222'),
('Mariana Costa', '333.333.333-33', '(47) 99999-3333'),
('Juliana Martins', '444.444.444-44', '(47) 99999-4444'),
('Pedro Santos', '555.555.555-55', '(47) 99999-5555'),
('Fernanda Rocha', '666.666.666-66', '(47) 99999-6666'),
('Lucas Almeida', '777.777.777-77', '(47) 99999-7777'),
('Gabriel Oliveira', '888.888.888-88', '(47) 99999-8888');

-- Médicos
INSERT INTO medicos (nome, especialidade) VALUES
('João Pereira', 'Cardiologia'),
('Fernanda Lima', 'Pediatria'),
('Ricardo Alves', 'Ortopedia'),
('Patrícia Gomes', 'Dermatologia'),
('Marcos Silva', 'Neurologia');

-- Consultas
INSERT INTO consultas
(paciente_id, medico_id, data_consulta, status_consulta, motivo_consulta)
VALUES
(1, 1, '2026-10-10', 'Realizada', 'Dor no peito'),
(2, 1, '2026-10-12', 'Realizada', 'Check-up cardiológico'),
(3, 2, '2026-10-20', 'Agendada', 'Consulta pediátrica'),
(1, 3, '2026-10-25', 'Agendada', 'Dor no joelho'),
(2, 1, '2026-10-30', 'Agendada', 'Retorno cardiológico'),
(6, 5, '2026-10-25', 'Agendada', 'Dor de cabeça frequente'),
(7, 1, '2026-10-27', 'Agendada', 'Avaliação cardíaca'),
(8, 2, '2026-10-28', 'Realizada', 'Febre persistente'),
(1, 3, '2026-10-30', 'Agendada', 'Lesão esportiva'),
(2, 4, '2026-11-02', 'Agendada', 'Manchas na pele'),
(3, 5, '2026-11-04', 'Realizada', 'Enxaqueca'),
(4, 1, '2026-11-05', 'Agendada', 'Exame de rotina');