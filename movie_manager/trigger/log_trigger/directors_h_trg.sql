CREATE OR REPLACE TRIGGER directors_h_trg
    AFTER INSERT OR UPDATE OR DELETE ON directors
    FOR EACH ROW
DECLARE
    v_mod_user VARCHAR2(250 CHAR);
    v_mod_time TIMESTAMP;
BEGIN
    IF deleting
    THEN
    v_mod_user := sys_context('USERENV', 'OS_USER');
    v_mod_time := systimestamp;

    INSERT INTO directors_h
        (id
        ,person_id
        ,creation_time
        ,creator_user
        ,mod_user
        ,mod_time
        ,dml_flag
        ,version)
    VALUES
        (:old.id
        ,:old.person_id
        ,:old.creation_time
        ,:old.creator_user
        ,v_mod_user
        ,v_mod_time
        ,'D'
        ,:old.version + 1);
ELSE
    INSERT INTO directors_h
        (id
        ,person_id
        ,creation_time
        ,creator_user
        ,mod_user
        ,mod_time
        ,dml_flag
        ,version)
    VALUES
        (:new.id
        ,:new.person_id
        ,:new.creation_time
        ,:new.creator_user
        ,:new.mod_user
        ,:new.mod_time
        ,:new.dml_flag
        ,:new.version);
    END IF;
END;
/