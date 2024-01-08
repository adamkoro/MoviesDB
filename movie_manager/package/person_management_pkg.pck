CREATE OR REPLACE PACKAGE person_management_pkg AS
    PROCEDURE add_person(
        p_name IN person.name%TYPE,
        p_birth_date IN person.birth_date%TYPE
    );

    PROCEDURE modify_person(
        p_person_id IN person.id%TYPE,
        p_name IN person.name%TYPE,
        p_birth_date IN person.birth_date%TYPE
    );

    PROCEDURE delete_person(
        p_person_id IN person.id%TYPE
    );
END person_management_pkg;
/

CREATE OR REPLACE PACKAGE BODY person_management_pkg AS

    PROCEDURE add_person(
        p_name IN person.name%TYPE,
        p_birth_date IN person.birth_date%TYPE
    ) AS
    BEGIN
        INSERT INTO person (name, birth_date)
        VALUES (p_name, p_birth_date);
    END add_person;

    PROCEDURE modify_person(
        p_person_id IN person.id%TYPE,
        p_name IN person.name%TYPE,
        p_birth_date IN person.birth_date%TYPE
    ) AS
    BEGIN
    UPDATE person
        SET name = p_name, birth_date = p_birth_date
        WHERE id = p_person_id;
    END modify_person;

    PROCEDURE delete_person(
        p_person_id IN person.id%TYPE
    ) AS
    BEGIN
        DELETE FROM person
        WHERE id = p_person_id;
    END delete_person;

END person_management_pkg;
/
