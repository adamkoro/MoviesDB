DECLARE
    v_movie_id movies.id%TYPE;
    v_actor_id actors.id%TYPE;
    v_role roles.role%TYPE;
BEGIN
    SELECT id INTO v_movie_id FROM movies WHERE title = 'The Matrix';
    SELECT id INTO v_actor_id FROM actors WHERE name = 'Keanu Reeves';
    add_role(v_movie_id, v_actor_id, 'Neo');
END;
/
COMMIT;