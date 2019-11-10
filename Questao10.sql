-- Questao 10

SELECT a.nome,
	EXTRACT(Month from c.data_criacao) mes,
    Extract (Year from c.data_criacao) ano,
	g.quantidade as QtdadeVendida
FROM
usuario a
INNER JOIN venda c ON c.codigo_usuario = a.codigo
INNER JOIN item_venda g ON g.codigo_venda = c.codigo
ORDER BY mes;
