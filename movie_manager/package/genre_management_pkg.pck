CREATE OR REPLACE PACKAGE genre_management_pkg AS
    PROCEDURE add_genre(
        p_genre IN genres.genre%TYPE
    );

    PROCEDURE modify_genre(
        p_genre_id IN genres.id%TYPE,
        p_genre IN genres.genre%TYPE
    );

    PROCEDURE delete_genre(
        p_genre_id IN genres.id%TYPE
    );
END genre_manage_pkg;
/

CREATE OR REPLACE PACKAGE BODY genre_manage_pkg AS

    PROCEDURE add_genre(
        p_genre IN genres.genre%TYPE
    ) AS
    BEGIN
        INSERT INTO genres (genre)
        VALUES (p_genre);
    END add_genre;

    PROCEDURE modify_genre(
        p_genre_id IN genres.id%TYPE,
        p_genre IN genres.genre%TYPE
    ) AS
    BEGIN
        UPDATE genres
        SET genre = p_genre
        WHERE id = p_genre_id;
    END modify_genre;

    PROCEDURE delete_genre(
        p_genre_id IN genres.id%TYPE
    ) AS
    BEGIN
        DELETE FROM genres
        WHERE id = p_genre_id;
    END delete_genre;

END genre_management_pkg;
/
