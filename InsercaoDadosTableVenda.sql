--Insecao de dados na Tabela Venda

INSERT INTO public.venda(
	 data_criacao, valor_frete, valor_desconto, valor_total, status, observacao, data_hora_entrega, codigo_cliente, codigo_usuario)
	VALUES 
	('28/11/2019','350.00', '200.00', '25.000', 'Vendido', 'Cuidado Produto pode quebrar', '20/11/2019', '1', '2'),
	('19/11/2019','250.00', '150.00', '15.000', 'Vendido', 'Produto pode quebrar', '21/11/2019', '2', '3'),
	('30/10/2019','180.00','65.00','12.000','Entregue','Mercadoria foi entregue antes do prazo','04/11/2019','3','1');