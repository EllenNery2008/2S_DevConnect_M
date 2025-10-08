--DDL
CREATE DATABASE db_usuario;
 
 GO

 Use db_usuario;


 CREATE TABLE tb_usuario (
 id    INT       IDENTITY(1,1)   PRIMARY KEY
 ,nome_completo NVARCHAR(255) NOT NULL
 ,nome_usuario NVARCHAR (255) NOT NULL
 ,email NVARCHAR(255)UNIQUE NOT NULL
 ,senha NVARCHAR(50)NOT NULL
 ,foto_perfil_url NVARCHAR(150) NOT NULL
 );

 GO

 SELECT * FROM tb_usuario;

 --Tabela publicacao
 CREATE TABLE tb_publicacao(
 id INT  IDENTITY(1,1) PRIMARY KEY 

 ,descricao NCHAR(11) NOT NULL
 ,imagem_Url NVARCHAR(200) NOT NULL
 ,data_publicacao NVARCHAR(255) NOT NULL

 ,FOREIGN KEY(id_usuario) REFERENCES tb_usuario(id)
 
);

SELECT * FROM tb_publicacao;
 
 --Tabela curtida
 CREATE TABLE tb_curtida(
 id INT IDENTITY(1,1) PRIMARY KEY
 FOREIGN KEY(usuariold) REFERENCES tb_usuariold(id)
 ,FOREIGN KEY (publicacao) REFERENCES tb_publicacao(id)
 
 );

 SELECT * FROM tb_curtida;

--Tabela comentario
Create table tb_comentario(
id int identity(1,1) PRIMARY KEY
FOREIGN KEY (comentariold) REFERENCES tb_comentario(id)
,FOREIGN KEY (usuario) REFERENCES tb_usuario(id)
,FOREIGN KEY (publicacaold) REFERENCES tb_usuario(id)
,texto NCHAR(255) NOT NULL
,data_comentario Nvarchar (255) not null

--Tabela s


