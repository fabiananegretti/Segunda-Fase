--Criação Trigger Processa Tabela Venda Audit


CREATE FUNCTION public.processa_venda_audit()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
    BEGIN
      
        IF (TG_OP = 'DELETE') THEN
            INSERT INTO venda_audit SELECT 'E', user, now(), OLD.*;
            RETURN OLD;
        ELSIF (TG_OP = 'UPDATE') THEN
            INSERT INTO venda_audit SELECT 'A', user, now(), NEW.*;
            RETURN NEW;
        ELSIF (TG_OP = 'INSERT') THEN
            INSERT INTO venda_audit SELECT 'I', user, now(), NEW.*;
            RETURN NEW;
        END IF;
        RETURN NULL; 
    END;
$BODY$;