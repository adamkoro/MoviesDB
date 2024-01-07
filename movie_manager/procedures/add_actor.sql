CREATE OR REPLACE PROCEDURE add_actor(
    p_name IN actors.name%TYPE,
    p_birth_date IN actors.birth_date%TYPE
) AS
BEGIN
    INSERT INTO actors(name, birth_date)
    VALUES (p_name, p_birth_date);
END add_actor;
/