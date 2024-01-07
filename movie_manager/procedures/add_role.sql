CREATE OR REPLACE PROCEDURE add_role(
    p_movie_id IN roles.movie_id%TYPE,
    p_actor_id IN roles.actor_id%TYPE,
    p_role IN roles.role%TYPE
) AS
BEGIN
    INSERT INTO roles(movie_id, actor_id, role)
    VALUES (p_movie_id, p_actor_id, p_role);
END add_role;
/
