USE db_escola_M;

--Ira exibir somente as colunas personalizadas(diferente do *)
SELECT nome FROM tb_escola;

--SELECT TOP limita a quantidade de registros
SELECT TOP 3 nome FROM tb_aluno;

--Exibir somente 3 registros do mais recente para o menos recente
SELECT TOP 3 nome
FROM tb_aluno
ORDER BY id DESC;

--EXIBE SOMENTE O NOME DA TRUMA DO PERIODO DA AMANHÃ
SELECT * FROM tb_turma

SELECT nome_turma
FROM tb_turma
WHERE periodo = 'Manhã';

--EXIBE A PROVA DO PROFESSORA SANDRA
SELECT * FROM tb_prova
WHERE nome_professor = 'Sandra';



--EXIBE QUANTOS ALUNOS TEM 
SELECT COUNT(cpf) AS qtd_total_alunos FROM tb_aluno;

--EXIBE QUANTOS ALUNOS ESTÃO ATRELADOS A UMA PROVA QUE PERTENCE A UMA MATERIA
SELECT COUNT(id_aluno) AS qtd_alunos
FROM tb_prova
WHERE materia = 'Portugues';

select * from tb_prova;

--EXIBE A DATA DE NASCIMENTO MAIS VELHA 
SELECT MIN(data_nasc) FROM tb_aluno;

--2000 - MAX(MAIOR)
--1970 - MIN(MENOR)

select * from tb_aluno;

--EXIBE A DATA DE NASCIMENTO E O NOME DO ALUNO MAIS VELHO
SELECT nome, data_nasc
FROM tb_aluno
WHERE data_nasc = (SELECT MIN(data_nasc) FROM tb_aluno);

--EXIBE A QUANTIDADE DE ALUNOS QUE SAO MAIS VELHOS 

--EXIBE A DATA DE NASCIMENTO MAIS NOVA
SELECT MAX(data_nasc) FROM tb_aluno;

--EXIBE A DATA DE NASCIMENTO MAIS NOVA
SELECT MAX(data_nasc) FROM tb_aluno;

--SOMA OS ID's DAS TURMAS CADASTRADAS
SELECT SUM(id) AS total FROM tb_turma;

--MEDIA DE NOTAS DE PROVA
SELECT AVG(nota) AS media FROM tb_prova;

select * from tb_aluno;

--EXIBE OS NOMES DOS MIS NOVOS
SELECT MAX(data_nasc) AS mais_novo, id
FROM tb_aluno
GROUP BY id 
ORDER BY mais_novo DESC;