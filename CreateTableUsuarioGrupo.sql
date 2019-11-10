--Criação Tabela Usuario Grupo

CREATE TABLE usuario_grupo
(
    codigo_usuario integer,
    codigo_grupo integer,
    FOREIGN KEY (codigo_grupo) REFERENCES grupo (codigo) 
   FOREIGN KEY (codigo_usuario) REFERENCES usuario (codigo) 
)



