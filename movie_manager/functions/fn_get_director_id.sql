CREATE OR REPLACE FUNCTION fn_get_director_id(p_person_id directors.person_id%TYPE)
RETURN directors.id%TYPE IS
    v_director_id directors.id%TYPE;
BEGIN
    SELECT id INTO v_director_id FROM directors WHERE person_id = p_person_id;
    RETURN v_director_id;
END fn_get_director_id;
/