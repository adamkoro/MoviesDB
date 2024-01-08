CREATE OR REPLACE PACKAGE director_management_pkg AS
    PROCEDURE add_director(
        p_person_id IN directors.person_id%TYPE
    );

    PROCEDURE delete_director(
        p_director_id IN directors.id%TYPE
    );
END director_management_pkg;
/

CREATE OR REPLACE PACKAGE BODY director_management_pkg AS

    PROCEDURE add_director(
        p_person_id IN directors.person_id%TYPE
    ) AS
    BEGIN
        INSERT INTO directors (person_id)
        VALUES (p_person_id);
    END add_director;

    PROCEDURE delete_director(
        p_director_id IN directors.id%TYPE
    ) AS
    BEGIN
        DELETE FROM directors
        WHERE id = p_director_id;
    END delete_director;

END director_management_pkg;
/
