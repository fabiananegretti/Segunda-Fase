--Criação Tabela Venda

create table venda (
	codigo SERIAL PRIMARY KEY
	data_criacao DATE,
	valor_frete DECIMAL(10,2),
	valor_desconto DECIMAL(10,2),
	valor_total DECIMAL(10,2),
	status VARCHAR(30),
	observacao VARCHAR(200),
	data_hora_entrega DATE,
	codigo_cliente BIGINT,
	codigo_usuario BIGINT,
	FOREIGN KEY (codigo_cliente) REFERENCES cliente (codigo),
	FOREIGN KEY (codigo_usuario) REFERENCES usuario (codigo)

)



