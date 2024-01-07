DECLARE
    v_genre_id genres.id%TYPE;
BEGIN
    add_genre('Action');
END;
/
COMMIT;