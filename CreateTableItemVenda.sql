--Criação Tabela Item Venda

CREATE or replace TABLE item_venda
(
    codigo SERIAL PRIMARY KEY,
    quantidade integer,
    valor_unitario numeric(10,2),
    codigo_cerveja bigint,
    codigo_venda bigint,
	FOREIGN KEY (codigo_cerveja) REFERENCES cerveja (codigo),
  	FOREIGN KEY (codigo_venda) REFERENCES venda (codigo)	
)

