--Criação Index na Tabela cliente usando o hash por ser uma tabela que pode busca o CPF ou CNPJ do cliente

CREATE INDEX index_hash_cliente
    ON public.cliente USING hash
    (cpf_cnpj COLLATE pg_catalog."default")
    TABLESPACE pg_default;
