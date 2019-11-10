--CRIAÇÃO DA TABELA CERVEJA

create table cerveja(
	codigo SERIAL PRIMARY KEY
	sku VARCHAR(50),
	nome VARCHAR(80),
	descricao TEXT,
	valor DECIMAL(10,2),
	teor_alcoolico DECIMAL(10,2),
	comissao DECIMAL(10,2),
	sabor VARCHAR(50),
	origem VARCHAR(50),
	codigo_estilo BIGINT,
	quantidade_estoque INT,
	foto VARCHAR(100),
	content_type VARCHAR(100)
	FOREIGN KEY (codigo_estilo) REFERENCES estilo (codigo)
)
