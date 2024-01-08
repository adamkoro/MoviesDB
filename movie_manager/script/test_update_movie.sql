DECLARE
    v_movie_id movies.id%TYPE;
    v_movie_title_old movies.title%TYPE := 'The Mátrix';
    v_movie_title_new movies.title%TYPE := 'The Matrix';
    v_movie_release_year movies.release_year%TYPE;
    v_movie_genre_id movies.genre_id%TYPE;
    v_movie_director_id movies.director_id%TYPE;
BEGIN
    v_movie_id := fn_get_movie_id(v_movie_title_old,TO_DATE('1999', 'YYYY'));
    SELECT release_year, genre_id, director_id INTO v_movie_release_year, v_movie_genre_id, v_movie_director_id
    FROM movies
    WHERE id = v_movie_id;

    movie_management_pkg.modify_movie(v_movie_id, v_movie_title_new, v_movie_release_year, v_movie_genre_id, v_movie_director_id);
END;
/

COMMIT;