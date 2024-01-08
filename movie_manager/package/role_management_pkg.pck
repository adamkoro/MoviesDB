CREATE OR REPLACE PACKAGE role_management_pkg AS
    PROCEDURE add_role(
        p_movie_id IN roles.movie_id%TYPE,
        p_actor_id IN roles.actor_id%TYPE,
        p_role IN roles.role%TYPE
    );

    PROCEDURE modify_role(
        p_role_id IN roles.id%TYPE,
        p_movie_id IN roles.movie_id%TYPE,
        p_actor_id IN roles.actor_id%TYPE,
        p_role IN roles.role%TYPE
    );

    PROCEDURE delete_role(
        p_role_id IN roles.id%TYPE
    );
END role_management_pkg;
/

CREATE OR REPLACE PACKAGE BODY role_management_pkg AS

    PROCEDURE add_role(
        p_movie_id IN roles.movie_id%TYPE,
        p_actor_id IN roles.actor_id%TYPE,
        p_role IN roles.role%TYPE
    ) AS
    BEGIN
        INSERT INTO roles (movie_id, actor_id, role)
        VALUES (p_movie_id, p_actor_id, p_role);
    END add_role;

    PROCEDURE modify_role(
        p_role_id IN roles.id%TYPE,
        p_movie_id IN roles.movie_id%TYPE,
        p_actor_id IN roles.actor_id%TYPE,
        p_role IN roles.role%TYPE
    ) AS
    BEGIN
        UPDATE roles
        SET movie_id = p_movie_id, actor_id = p_actor_id, role = p_role
        WHERE id = p_role_id;
    END modify_role;

    PROCEDURE delete_role(
        p_role_id IN roles.id%TYPE
    ) AS
    BEGIN
        DELETE FROM roles
        WHERE id = p_role_id;
    END delete_role;

END role_management_pkg;
/
