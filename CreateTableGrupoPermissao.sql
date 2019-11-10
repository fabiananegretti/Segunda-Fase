--Criação Tabela Grupo Permissao

CREATE TABLE grupo_permissao
(
    codigo_grupo integer,
    codigo_permissao integer,
    FOREIGN KEY (codigo_grupo) REFERENCES grupo (codigo) 
    FOREIGN KEY (codigo_permissao) REFERENCES permissao (codigo) 
)
