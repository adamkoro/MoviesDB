DECLARE
    v_movie_id movies.id%TYPE;
    v_movie_title movies.title%TYPE := 'The Matrix';
    v_role_id roles.id%TYPE;
    v_rating_id ratings.id%TYPE;
BEGIN
    SELECT id INTO v_movie_id FROM movies WHERE title LIKE v_movie_title;
    SELECT id INTO v_rating_id FROM ratings WHERE movie_id = v_movie_id;
    SELECT id INTO v_role_id FROM roles WHERE movie_id = v_movie_id;
    rating_management_pkg.delete_rating(v_rating_id);
    role_management_pkg.delete_role(v_role_id);
    movie_management_pkg.delete_movie(v_movie_id);
END;
/

COMMIT;

SET LINESIZE 1000
SET PAGESIZE 100
SET TRIMSPOOL ON
SET TRIMOUT ON
SET COLSEP ' | '
SET NUMWIDTH 10
SET HEADING ON
SET UNDERLINE '-'
select title, dml_flag, version from movies_h;