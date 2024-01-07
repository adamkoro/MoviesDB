CREATE OR REPLACE PROCEDURE add_rating(
    p_movie_id IN ratings.movie_id%TYPE,
    p_username IN ratings.username%TYPE,
    p_rating IN ratings.rating%TYPE
) AS
BEGIN
    INSERT INTO ratings(movie_id, username, rating)
    VALUES (p_movie_id, p_username, p_rating);
END add_rating;
/