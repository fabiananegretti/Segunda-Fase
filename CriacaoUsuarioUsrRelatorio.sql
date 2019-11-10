--Criação do usuário usr_relatorio

CREATE USER usr_relatorio WITH ENCRYPTED PASSWORD 'usr_relatorio';

GRANT CONNECT ON DATABASE conveniencia to usr_relatorio;
GRANT SELECT ON TABLE public.venda_audit TO usr_relatorio;
GRANT SELECT ON TABLE public.vw_mat_lista TO usr_relatorio;
SELECT usename FROM pg_user;

CREATE ROLE usr_relatorio WITH
  LOGIN
  NOSUPERUSER
  INHERIT
  NOCREATEDB
  NOCREATEROLE
  NOREPLICATION
  VALID UNTIL '2020-11-06 02:16:04-04';
  