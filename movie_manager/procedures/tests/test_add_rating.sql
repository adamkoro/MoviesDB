DECLARE
    v_movie_id movies.id%TYPE;
    v_movie_rating ratings.rating%TYPE;
BEGIN
    SELECT id INTO v_movie_id FROM movies WHERE title = 'The Matrix';
    add_rating(v_movie_id, 'test_user', 5);
END;
/
COMMIT;