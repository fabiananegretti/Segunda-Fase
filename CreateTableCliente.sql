--Criação Tabela Cliente

create table cliente (
	codigo SERIAL PRIMARY KEY,
	nome VARCHAR(80),
	tipo_pessoa VARCHAR(15),
	cpf_cnpj VARCHAR(30),
	telefone VARCHAR(20),
	email VARCHAR(50),
	logradouro VARCHAR(50),
	numero VARCHAR(15),
	complemento VARCHAR(20),
	cep VARCHAR(15),
	codigo_cidade BIGINT
	FOREIGN KEY (codigo_cidade) REFERENCES cidade (codigo)
)

