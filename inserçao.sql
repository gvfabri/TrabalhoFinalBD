INSERT INTO aluno (idaluno, ra, nome, termo, curso, email) VALUES
(1, 201, 'Ana Souza', 1, 'Engenharia da Computação', 'ana.souza@email.com'),
(2, 202, 'Bruno Lima', 2, 'Ciência da Computação', 'bruno.lima@email.com'),
(3, 203, 'Carla Mendes', 3, 'Engenharia Biomédica', 'carla.mendes@email.com'),
(4, 204, 'Daniel Oliveira', 4, 'Matemática Computacional', 'daniel.oliveira@email.com'),
(5, 205, 'Eduarda Costa', 5, 'Engenharia de Materiais', 'eduarda.costa@email.com'),
(6, 206, 'Felipe Ferreira', 6, 'Biotecnologia', 'felipe.ferreira@email.com'),
(7, 207, 'Gabriela Rocha', 7, 'Ciência e Tecnologia', 'gabriela.rocha@email.com'),
(8, 208, 'Henrique Silva', 1, 'Engenharia da Computação', 'henrique.silva@email.com'),
(9, 209, 'Isabela Martins', 2, 'Ciência da Computação', 'isabela.martins@email.com'),
(10, 210, 'João Santos', 3, 'Engenharia Biomédica', 'joao.santos@email.com');

INSERT INTO disciplina (iddisc, nome) VALUES
(1, 'Algoritmos e Estruturas de Dados'),
(2, 'Cálculo Diferencial e Integral'),
(3, 'Física I'),
(4, 'Introdução à Biotecnologia'),
(5, 'Materiais Avançados'),
(6, 'Inteligência Artificial'),
(7, 'Modelagem Computacional'),
(8, 'Bioinformática'),
(9, 'Eletrônica Aplicada'),
(10, 'Sistemas Embarcados');

INSERT INTO material (idmaterial, nome, formato) VALUES
(1, 'Apostila de Algoritmos', 'pdf'),
(2, 'Manual de Laboratório de Biotecnologia', 'docx'),
(3, 'Introdução à Inteligência Artificial', 'pdf'),
(4, 'Física para Computação - Exercícios', 'xlsx'),
(5, 'Tabelas de Materiais Avançados', 'csv'),
(6, 'Guia de Modelagem Computacional', 'pdf'),
(7, 'Notas de Aula - Bioinformática', 'doc'),
(8, 'Projeto de Sistemas Embarcados', 'pptx'),
(9, 'Eletrônica Aplicada - Diagramas', 'jpg'),
(10, 'Resumos de Cálculo Diferencial', 'pdf');

INSERT INTO monitor (idmonitor, tipo, email) VALUES
(1, 'Bolsista', 'ana.souza@email.com'),
(2, 'Voluntário', 'bruno.lima@email.com'),
(3, 'Bolsista', 'carla.mendes@email.com'),
(4, 'Voluntário', 'daniel.oliveira@email.com'),
(5, 'Bolsista', 'eduarda.costa@email.com'),
(6, 'Voluntário', 'felipe.ferreira@email.com'),
(7, 'Bolsista', 'gabriela.rocha@email.com'),
(8, 'Voluntário', 'henrique.silva@email.com'),
(9, 'Bolsista', 'isabela.martins@email.com'),
(10, 'Voluntário', 'joao.santos@email.com');

INSERT INTO professor (idprof, nome, email) VALUES
(1, 'Dr. Carlos Almeida', 'carlos.almeida@email.com'),
(2, 'Profa. Mariana Souza', 'mariana.souza@email.com'),
(3, 'Dr. Ricardo Lima', 'ricardo.lima@email.com'),
(4, 'Profa. Fernanda Rocha', 'fernanda.rocha@email.com'),
(5, 'Dr. João Martins', 'joao.martins@email.com'),
(6, 'Profa. Camila Mendes', 'camila.mendes@email.com'),
(7, 'Dr. Eduardo Ferreira', 'eduardo.ferreira@email.com'),
(8, 'Profa. Juliana Costa', 'juliana.costa@email.com'),
(9, 'Dr. André Oliveira', 'andre.oliveira@email.com'),
(10, 'Profa. Patrícia Silva', 'patricia.silva@email.com');

INSERT INTO monitoria (idmonitoria, turno, idprof, idmonitor, iddisc) VALUES
(1, 'Integral', 1, 1, 1),
(2, 'Integral', 2, 2, 2),
(3, 'Noturno', 3, 3, 3),
(4, 'Integral', 4, 4, 4),
(5, 'Integral', 5, 5, 5),
(6, 'Integral', 6, 6, 6),
(7, 'Noturno', 7, 7, 7),
(8, 'Integral', 8, 8, 8),
(9, 'Integral', 9, 9, 9),
(10, 'Noturno', 10, 10, 10);

INSERT INTO presencial (idsessao, predio, andar) VALUES
(1, 'Parque Tecnológico', 1),
(2, 'Parque Tecnológico', 2),
(3, 'Parque Tecnológico', 3),
(4, 'Parque Tecnológico', 1),
(5, 'Parque Tecnológico', 2),
(6, 'Parque Tecnológico', 3),
(7, 'Parque Tecnológico', 1),
(8, 'Parque Tecnológico', 2),
(9, 'Parque Tecnológico', 3),
(10, 'Talim', 1);

INSERT INTO remoto (idsessaor, link) VALUES
(1, 'https://discord.com/invite/abc123'),
(2, 'https://discord.com/invite/def456'),
(3, 'https://discord.com/invite/ghi789'),
(4, 'https://discord.com/invite/jkl012'),
(5, 'https://discord.com/invite/mno345'),
(6, 'https://discord.com/invite/pqr678'),
(7, 'https://discord.com/invite/stu901'),
(8, 'https://discord.com/invite/vwx234'),
(9, 'https://discord.com/invite/yza567'),
(10, 'https://discord.com/invite/bcd890');

INSERT INTO sala (idsala, numero, idsessao) VALUES
(1, 101, 1),
(2, 102, 2),
(3, 103, 3),
(4, 104, 4),
(5, 105, 5),
(6, 106, 6),
(7, 107, 7),
(8, 108, 8),
(9, 109, 9),
(10, 110, 10);

INSERT INTO usuarios (nome, email, senha, data_criacao) VALUES
('Ana Souza', 'ana.souza@email.com', 'senha123', CURRENT_TIMESTAMP),
('Bruno Lima', 'bruno.lima@email.com', 'senha456', CURRENT_TIMESTAMP),
('Carla Mendes', 'carla.mendes@email.com', 'senha789', CURRENT_TIMESTAMP),
('Daniel Oliveira', 'daniel.oliveira@email.com', 'senha012', CURRENT_TIMESTAMP),
('Eduarda Costa', 'eduarda.costa@email.com', 'senha345', CURRENT_TIMESTAMP),
('Felipe Ferreira', 'felipe.ferreira@email.com', 'senha678', CURRENT_TIMESTAMP),
('Gabriela Rocha', 'gabriela.rocha@email.com', 'senha901', CURRENT_TIMESTAMP),
('Henrique Silva', 'henrique.silva@email.com', 'senha234', CURRENT_TIMESTAMP),
('Isabela Martins', 'isabela.martins@email.com', 'senha567', CURRENT_TIMESTAMP),
('João Santos', 'joao.santos@email.com', 'senha890', CURRENT_TIMESTAMP);

INSERT INTO relacaomonitoralunosessao (idaluno, idmonitoria, idsessao, idsessaoR, data, horario) VALUES
(1, 1, 1, NULL, '2025-02-20', '10:00:00'),
(2, 2, NULL, 2, '2025-02-21', '14:00:00'),
(3, 3, 3, NULL, '2025-02-22', '09:30:00'),
(4, 4, NULL, 4, '2025-02-23', '16:00:00'),
(5, 5, 5, NULL, '2025-02-24', '11:00:00'),
(6, 6, NULL, 6, '2025-02-25', '13:30:00'),
(7, 7, 7, NULL, '2025-02-26', '15:00:00'),
(8, 8, NULL, 8, '2025-02-27', '17:00:00'),
(9, 9, 9, NULL, '2025-02-28', '08:00:00'),
(10, 10, NULL, 10, '2025-03-01', '18:00:00');

INSERT INTO relacaomonitoriamaterial (idmonitoria, idmaterial) VALUES
(1, 1),  -- Algoritmos e Estruturas de Dados com Apostila de Algoritmos
(2, 10), -- Cálculo Diferencial e Integral com Resumos de Cálculo Diferencial
(3, 4),  -- Física I com Física para Computação - Exercícios
(4, 2),  -- Introdução à Biotecnologia com Manual de Laboratório de Biotecnologia
(5, 5),  -- Materiais Avançados com Tabelas de Materiais Avançados
(6, 3),  -- Inteligência Artificial com Introdução à Inteligência Artificial
(7, 6),  -- Modelagem Computacional com Guia de Modelagem Computacional
(8, 7),  -- Bioinformática com Notas de Aula - Bioinformática
(9, 9),  -- Eletrônica Aplicada com Diagramas de Eletrônica Aplicada
(10, 8); -- Sistemas Embarcados com Projeto de Sistemas Embarcados

INSERT INTO relacaomonitoriamonitor (idmonitoria, idmonitor, semestre, ano) VALUES
(1, 1, 3, 2024),
(2, 2, 7, 2024),
(3, 3, 1, 2024),
(4, 4, 9, 2024),
(5, 5, 5, 2024),
(6, 6, 10, 2024),
(7, 7, 4, 2024),
(8, 8, 2, 2024),
(9, 9, 8, 2024),
(10, 10, 6, 2024);

INSERT INTO relacaoprofessordisc (idprof, iddisc) VALUES
(1, 1),  -- Dr. Carlos Almeida -> Algoritmos e Estruturas de Dados
(2, 2),  -- Profa. Mariana Souza -> Cálculo Diferencial e Integral
(3, 3),  -- Dr. Ricardo Lima -> Física I
(4, 4),  -- Profa. Fernanda Rocha -> Introdução à Biotecnologia
(5, 5),  -- Dr. João Martins -> Materiais Avançados
(6, 6),  -- Profa. Camila Mendes -> Inteligência Artificial
(7, 7),  -- Dr. Eduardo Ferreira -> Modelagem Computacional
(8, 8),  -- Profa. Juliana Costa -> Bioinformática
(9, 9),  -- Dr. André Oliveira -> Eletrônica Aplicada
(10, 10); -- Profa. Patrícia Silva -> Sistemas Embarcados

