CREATE OR REPLACE PACKAGE rating_management_pkg AS
    PROCEDURE add_rating(
        p_username IN ratings.username%TYPE,
        p_movie_id IN ratings.movie_id%TYPE,
        p_rating IN ratings.rating%TYPE
    );

    PROCEDURE modify_rating(
        p_rating_id IN ratings.id%TYPE,
        p_username IN ratings.username%TYPE,
        p_movie_id IN ratings.movie_id%TYPE,
        p_rating IN ratings.rating%TYPE
    );

    PROCEDURE delete_rating(
        p_rating_id IN ratings.id%TYPE
    );
END rating_management_pkg;
/

CREATE OR REPLACE PACKAGE BODY rating_management_pkg AS

    PROCEDURE add_rating(
        p_username IN ratings.username%TYPE,
        p_movie_id IN ratings.movie_id%TYPE,
        p_rating IN ratings.rating%TYPE
    ) AS
    BEGIN
        INSERT INTO ratings (username, movie_id, rating)
        VALUES (p_username, p_movie_id, p_rating);
    END add_rating;

    PROCEDURE modify_rating(
        p_rating_id IN ratings.id%TYPE,
        p_username IN ratings.username%TYPE,
        p_movie_id IN ratings.movie_id%TYPE,
        p_rating IN ratings.rating%TYPE
    ) AS
    BEGIN
        UPDATE ratings
        SET username = p_username, movie_id = p_movie_id, rating = p_rating
        WHERE id = p_rating_id;
    END modify_rating;

    PROCEDURE delete_rating(
        p_rating_id IN ratings.id%TYPE
    ) AS
    BEGIN
        DELETE FROM ratings
        WHERE id = p_rating_id;
    END delete_rating;

END rating_management_pkg;
/
