--Criação Index na Tabela Venda usando o btree por ser uma tabela que busca valores de venda

CREATE INDEX index_btree_venda
    ON public.venda USING btree
    (codigo ASC NULLS LAST)
    TABLESPACE pg_default;
