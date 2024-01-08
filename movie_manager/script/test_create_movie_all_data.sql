DECLARE
    -- movies
    v_movie_id movies.id%TYPE;
    v_movie_title movies.title%TYPE := 'The Mátrix';
    v_movie_release_year movies.release_year%TYPE := TO_DATE('1999', 'YYYY');
    -- director id
    v_director_id directors.id%TYPE;
    -- director person id
    v_d_person_id person.id%TYPE;
    v_d_person_name person.name%TYPE := 'Joel Silver';
    v_d_person_birth_date person.birth_date%TYPE := TO_DATE('1952-05-22', 'YYYY-MM-DD');
    -- actor id
    v_actor_id actors.id%TYPE;
    -- actor person id
    v_a_person_id person.id%TYPE;
    v_a_person_name person.name%TYPE := 'Keanu Reeves';
    v_a_person_birth_date person.birth_date%TYPE := TO_DATE('1964-09-02', 'YYYY-MM-DD');
    -- actor role
    v_role_name roles.role%TYPE := 'Neo';
    -- genre
    v_movie_genre genres.id%TYPE;
    v_genre_name genres.genre%TYPE := 'Sci-Fi';
BEGIN
    BEGIN
        v_d_person_id := fn_get_person_id(v_d_person_name,v_d_person_birth_date);
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            person_management_pkg.add_person(v_d_person_name, v_d_person_birth_date);
            v_d_person_id := fn_get_person_id(v_d_person_name,v_d_person_birth_date);
    END;

    BEGIN
        v_a_person_id := fn_get_person_id(v_a_person_name,v_a_person_birth_date);
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            person_management_pkg.add_person(v_a_person_name, v_a_person_birth_date);
            v_a_person_id := fn_get_person_id(v_a_person_name,v_a_person_birth_date);
    END;

    BEGIN
        v_director_id := fn_get_director_id(v_d_person_id);
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            director_management_pkg.add_director(v_d_person_id);
            v_director_id := fn_get_director_id(v_d_person_id);
    END;

    BEGIN
        v_movie_genre := fn_get_genre_id(v_genre_name);
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            genre_management_pkg.add_genre(v_genre_name);
            v_movie_genre := fn_get_genre_id(v_genre_name);
    END;

    movie_management_pkg.add_movie(v_movie_title,v_movie_release_year,v_movie_genre,v_director_id);
    v_movie_id := fn_get_movie_id(v_movie_title,v_movie_release_year);

    BEGIN
        v_actor_id := fn_get_actor_id(v_a_person_id);
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            actor_management_pkg.add_actor(v_a_person_id);
            v_actor_id := fn_get_actor_id(v_a_person_id);
    END;

    role_management_pkg.add_role(v_movie_id,v_actor_id,v_role_name);
    rating_management_pkg.add_rating('user6',v_movie_id,5);
END;
/

COMMIT;
