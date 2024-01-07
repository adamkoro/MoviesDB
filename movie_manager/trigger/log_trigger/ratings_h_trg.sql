CREATE OR REPLACE TRIGGER ratings_h_trg
    AFTER INSERT OR UPDATE OR DELETE ON ratings
    FOR EACH ROW
DECLARE
    v_mod_user VARCHAR2(250 CHAR);
    v_mod_time TIMESTAMP;
BEGIN
    IF deleting
    THEN
    v_mod_user := sys_context('USERENV', 'OS_USER');
    v_mod_time := systimestamp;

    INSERT INTO ratings_h
        (id
        ,movie_id
        ,username
        ,rating
        ,creation_time
        ,creator_user
        ,mod_user
        ,mod_time
        ,dml_flag
        ,version)
    VALUES
        (:old.id
        ,:old.movie_id
        ,:old.username
        ,:old.rating
        ,:old.creation_time
        ,:old.creator_user
        ,v_mod_user
        ,v_mod_time
        ,'D'
        ,:old.version + 1);
ELSE
    INSERT INTO ratings_h
        (id
        ,movie_id
        ,username
        ,rating
        ,creation_time
        ,creator_user
        ,mod_user
        ,mod_time
        ,dml_flag
        ,version)
    VALUES
        (:new.id
        ,:new.movie_id
        ,:new.username
        ,:new.rating
        ,:new.creation_time
        ,:new.creator_user
        ,:new.mod_user
        ,:new.mod_time
        ,:new.dml_flag
        ,:new.version);
    END IF;
END;
/