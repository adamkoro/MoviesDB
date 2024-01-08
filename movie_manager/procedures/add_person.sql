CREATE OR REPLACE PROCEDURE add_person(
    p_name IN person.name%TYPE,
    p_birth_date IN person.birth_date%TYPE
) AS
BEGIN
    INSERT INTO person(name, birth_date)
    VALUES (p_name, p_birth_date);
END add_person;
/