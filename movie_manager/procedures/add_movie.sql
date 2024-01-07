CREATE OR REPLACE PROCEDURE add_movie(
    p_title IN movies.title%TYPE,
    p_release_year IN movies.release_year%TYPE,
    p_genre_id IN movies.genre_id%TYPE,
    p_director_id IN movies.director_id%TYPE
) AS
BEGIN
    INSERT INTO movies (title, release_year, genre_id, director_id)
    VALUES (p_title, p_release_year, p_genre_id, p_director_id);
END add_movie;
/