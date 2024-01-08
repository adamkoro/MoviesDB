CREATE OR REPLACE FUNCTION fn_get_movie_id(p_title movies.title%TYPE, p_release_year movies.release_year%TYPE)
RETURN movies.id%TYPE IS
    v_movie_id movies.id%TYPE;
BEGIN
    SELECT id INTO v_movie_id FROM movies WHERE title = p_title and release_year = p_release_year;
    RETURN v_movie_id;
END fn_get_movie_id;
/