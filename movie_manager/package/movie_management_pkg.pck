CREATE OR REPLACE PACKAGE movie_management_pkg AS
    PROCEDURE add_movie(
        p_title IN movies.title%TYPE,
        p_release_year IN movies.release_year%TYPE,
        p_genre_id IN movies.genre_id%TYPE,
        p_director_id IN movies.director_id%TYPE
    );

    PROCEDURE modify_movie(
        p_movie_id IN movies.id%TYPE,
        p_title IN movies.title%TYPE,
        p_release_year IN movies.release_year%TYPE,
        p_genre_id IN movies.genre_id%TYPE,
        p_director_id IN movies.director_id%TYPE
    );

    PROCEDURE delete_movie(
        p_movie_id IN movies.id%TYPE
    );
END movie_management_pkg;
/

CREATE OR REPLACE PACKAGE BODY movie_management_pkg AS

    PROCEDURE add_movie(
        p_title IN movies.title%TYPE,
        p_release_year IN movies.release_year%TYPE,
        p_genre_id IN movies.genre_id%TYPE,
        p_director_id IN movies.director_id%TYPE
    ) AS
    BEGIN
        INSERT INTO movies (title, release_year, genre_id, director_id)
        VALUES (p_title, p_release_year, p_genre_id, p_director_id);
    END add_movie;

    PROCEDURE modify_movie(
        p_movie_id IN movies.id%TYPE,
        p_title IN movies.title%TYPE,
        p_release_year IN movies.release_year%TYPE,
        p_genre_id IN movies.genre_id%TYPE,
        p_director_id IN movies.director_id%TYPE
    ) AS
    BEGIN
        UPDATE movies
            SET title = p_title, release_year = p_release_year, genre_id = p_genre_id, director_id = p_director_id
        WHERE id = p_movie_id;
    END modify_movie;

    PROCEDURE delete_movie(
        p_movie_id IN movies.id%TYPE
    ) AS
    BEGIN
        DELETE FROM movies
        WHERE id = p_movie_id;
    END delete_movie;

END movie_management_pkg;
/
