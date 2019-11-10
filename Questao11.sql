-- Questao 11

SELECT a.nome,
	m.comissao
FROM
usuario a
INNER JOIN venda c ON c.codigo_usuario = a.codigo
INNER JOIN item_venda g ON g.codigo_venda = c.codigo
INNER JOIN cerveja m ON m.codigo = g.codigo_cerveja
AND a.codigo = '1';