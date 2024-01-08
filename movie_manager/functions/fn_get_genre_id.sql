CREATE OR REPLACE FUNCTION fn_get_genre_id(p_genre_name genres.genre%TYPE)
RETURN genres.id%TYPE IS
    v_genre_id genres.id%TYPE;
BEGIN
    SELECT id INTO v_genre_id FROM genres WHERE genre = p_genre_name;
    RETURN v_genre_id;
END fn_get_genre_id;
/