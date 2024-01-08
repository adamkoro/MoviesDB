CREATE OR REPLACE PACKAGE actor_management_pkg AS
    PROCEDURE add_actor(
        p_person_id IN actors.person_id%TYPE
    );

    PROCEDURE delete_actor(
        p_actor_id IN actors.id%TYPE
    );
END actor_management_pkg;
/

CREATE OR REPLACE PACKAGE BODY actor_management_pkg AS

    PROCEDURE add_actor(
        p_person_id IN actors.person_id%TYPE
    ) AS
    BEGIN
        INSERT INTO actors (person_id)
        VALUES (p_person_id);
    END add_actor;

    PROCEDURE delete_actor(
        p_actor_id IN actors.id%TYPE
    ) AS
    BEGIN
        DELETE FROM actors
        WHERE id = p_actor_id;
    END delete_actor;

END actor_management_pkg;
/
