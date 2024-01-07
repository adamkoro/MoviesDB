CREATE OR REPLACE PROCEDURE add_genre(
    p_genre IN genres.genre%TYPE
) AS
BEGIN
    INSERT INTO genres(genre)
    VALUES (p_genre);
END add_genre;
/