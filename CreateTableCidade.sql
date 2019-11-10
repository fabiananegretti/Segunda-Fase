--Criação Tabela Cidade
create table cidade (
	codigo SERIAL PRIMARY KEY,
	nome VARCHAR(50),
	codigo_estado BIGINT
	FOREIGN KEY (codigo_estado) REFERENCES estado (codigo)

)
