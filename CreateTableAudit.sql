--Criação Tabela Venda Audit


CREATE TABLE public.venda_audit
(
    operacao character(1) COLLATE pg_catalog."default" NOT NULL,
    usuario text COLLATE pg_catalog."default" NOT NULL,
    data timestamp without time zone NOT NULL,
    codigo integer NOT NULL DEFAULT nextval('venda_auditoria_codigo_seq'::regclass),
    data_criacao date,
    valor_frete numeric(10,2),
    valor_desconto numeric(10,2),
    valor_total numeric(10,2),
    status character varying(30) COLLATE pg_catalog."default",
    observacao character varying(200) COLLATE pg_catalog."default",
    data_hora_entrega date,
    codigo_cliente bigint,
    codigo_usuario bigint,
    CONSTRAINT venda_auditoria_pkey PRIMARY KEY (codigo),
    FOREIGN KEY (codigo_cliente) REFERENCES cliente (codigo) 
    FOREIGN KEY (codigo_usuario) REFERENCES usuario (codigo) 
       
)


