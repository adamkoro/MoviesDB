DECLARE
    v_movie_id movies.id%TYPE;
    v_movie_genre genres.id%TYPE;
    v_director_id directors.id%TYPE;
BEGIN
    SELECT id INTO v_director_id FROM directors WHERE name = 'Joel Silver';
    SELECT id INTO v_movie_genre FROM genres WHERE genre = 'Sci-Fi';
    add_movie('The Matrix', TO_DATE('1999', 'YYYY'), v_movie_genre, v_director_id);
END;
/
COMMIT;