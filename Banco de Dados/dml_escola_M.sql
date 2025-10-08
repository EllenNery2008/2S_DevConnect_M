--Comando para usar um banco ja criado
USE db_escola_M;


--COMANDO PARA INSERIR UM NOVO REGISTRO
INSERT INTO tb_escola(nome, endereco)
VALUES('Moura Branco','Rua Tapajós, 1085 - Olímpico');

SELECT * FROM tb_escola;

--REGISTRO NA TABELA ALUNO
INSERT INTO tb_aluno(nome, cpf, data_nasc, matricula, id_escola) VALUES
('Nathalia','81599873826','2009/01/30','oQ5hC2ZrP1',1),
('João','35009455030','2008/07/25','fJwipzWz6P',1);

--NOVOS REGISTROS DE ALUNOS 
INSERT INTO tb_aluno(nome, cpf, data_nasc, matricula, id_escola) VALUES
('Joana','47596869599','2000/11/30','2459', 1),
('Fernada','55235648971','2008/12/20','1269', 1),
('Isabely','15678912364','2009/04/22','3698', 1);

SELECT * FROM tb_aluno;

--REGISTRO NA TABELA TURMA
INSERT INTO tb_turma(numero_sala, periodo, serie, nome_turma, id_escola)
VALUES 
(102,'Tarde', 1,'1 Ano B', 1),
(201,'Manhã', 2,'2 Ano A', 1),
(202,'Noite', 2,'2 Ano C',1);

SELECT * FROM tb_turma;

INSERT INTO tb_prova(nome_professor, materia, duracao, nota, data_prova, id_aluno)
VALUES
('Sandra','Educacao Financeira','01:00:00',10,'2025/08/20', 1),
('Pricisla','Portugues','02:40:00',10,'2025/09/25', 2);

SELECT * FROM tb_prova;

--REGISTRO NA TABELA PROVA
--DURACAO 'HH:MM:SS' = '13:30:00'
--NOTA 9.5 OU 10 OU 100 OU 0.0

--TABELA TURMAPROVA - INTERMEDIARIA

INSERT INTO tb_turma_prova(id_turma, id_prova)
VALUES
(3, 4),
(3, 3);
 
 SELECT * FROM tb_turma_prova;

 --COMANDO QUE ATUALIZA O NOME DE UM ALUNO PELO SEU CPF
UPDATE tb_aluno
SET nome = 'Ellen'
WHERE cpf = '55235648971';

--COMANDO QUE EXCLUI EM REGISTRO
DELETE FROM tb_aluno
WHERE matricula = '2459';

SELECT * FROM tb_aluno;
