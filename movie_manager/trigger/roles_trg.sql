CREATE OR REPLACE TRIGGER roles_trg
    BEFORE INSERT OR UPDATE ON roles
    FOR EACH ROW
BEGIN
    IF inserting
    THEN
    IF :new.id IS NULL
    THEN
        :new.id := roles_id_seq.nextval;
    END IF;

    :new.creator_user  := sys_context('USERENV', 'OS_USER');
    :new.creation_time := systimestamp;
    :new.version       := 1;
    :new.dml_flag      := 'I';
    ELSE
    :new.version := :old.version + 1;

    IF :new.dml_flag <> 'D'
    THEN
        :new.dml_flag := 'U';
    END IF;
END IF;

    :new.mod_user := sys_context('USERENV', 'OS_USER');
    :new.mod_time := systimestamp;
END;
/