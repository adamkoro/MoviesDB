CREATE OR REPLACE PROCEDURE add_director(
    p_name IN directors.name%TYPE,
    p_birth_date IN directors.birth_date%TYPE
) AS
BEGIN
    INSERT INTO directors(name, birth_date)
    VALUES (p_name, p_birth_date);
END add_director;
/