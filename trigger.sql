
CREATE OR REPLACE FUNCTION process_audit_pracownik() RETURNS TRIGGER AS $audit_pracownik$
    BEGIN

        IF (TG_OP = 'DELETE') THEN
            INSERT INTO audit_pracownik SELECT 'D', now(), user, OLD.*;
        ELSIF (TG_OP = 'UPDATE') THEN
            INSERT INTO audit_pracownik SELECT 'U', now(), user, NEW.*;
        ELSIF (TG_OP = 'INSERT') THEN
            INSERT INTO audit_pracownik SELECT 'I', now(), user, NEW.*;
        END IF;
        RETURN NULL;
    END;
$audit_pracownik$ LANGUAGE plpgsql;

CREATE TRIGGER audit_pracownik
AFTER INSERT OR UPDATE OR DELETE ON pracownik
    FOR EACH ROW EXECUTE PROCEDURE process_audit_pracownik();

-- po dodaniu nowego pracownika w tabeli 'audit_pracownik'
-- pojawi sie informacja z data i godzina aktualizacji tabeli 'pracownik'
-- oraz kto dokonał zmian

insert into pracownik( imie, nazwisko, data_urodzenia)
  values ('Basia', 'Wawrowska', '1991-02-26');
