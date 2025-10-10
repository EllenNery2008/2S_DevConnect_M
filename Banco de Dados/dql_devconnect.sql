USE db_devconnect;


SELECT * FROM tb_usuario

SELECT * FROM tb_comentario

SELECT * FROM tb_curtida

SELECT * FROM tb_publicacao

SELECT * FROM tb_seguidor

--Exiba todos os nomes dos seguidores

							
SELECT
	Useguindo.nome_usuario AS nome_Seguindo, --NOME DA COLUNA SEGUINDO
	Useguido.nome_usuario  AS nome_Seguido   --NOME DA COLUNA SEGUIDO
FROM tb_seguidor		--chave-primaria        --chave estrangeira
INNER JOIN tb_usuario Useguindo ON Useguindo.id = tb_seguidor.id_seguindo --Seguindo 
INNER JOIN tb_usuario Useguido ON Useguido.id = tb_seguidor.id_usuario_seguidor

--EXIBA TODAS AS PUBLICACOES
SELECT 
	descricao,
	imagem_Url,
	tb_usuario.nome_usuario
FROM tb_publicacao
INNER JOIN tb_usuario ON tb_usuario.id = tb_publicacao.id_usuario
