--Criação da View Materializada 

CREATE MATERIALIZED VIEW public.vw_mat_lista
TABLESPACE pg_default
AS
 SELECT DISTINCT a.nome AS cliente,
    p.nome AS estilo
   FROM cliente a
     JOIN venda c ON a.codigo = c.codigo_cliente
     JOIN item_venda g ON g.codigo_venda = c.codigo
     JOIN cerveja m ON m.codigo = g.codigo_cerveja
     JOIN estilo p ON p.codigo = m.codigo_estilo
  ORDER BY a.nome;