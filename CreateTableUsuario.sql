--Criação Tabela Usuario

CREATE TABLE usuario
(
    codigo SERIAL PRIMARY KEY,
    nome character varying(50),
    email character varying(50),
    senha character varying(50),
    ativo tinyint,
    data_nascimento date
	
)




