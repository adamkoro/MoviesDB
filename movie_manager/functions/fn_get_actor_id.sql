CREATE OR REPLACE FUNCTION fn_get_actor_id(p_person_id actors.person_id%TYPE)
RETURN actors.id%TYPE IS
    v_actor_id actors.id%TYPE;
BEGIN
    SELECT id INTO v_actor_id FROM actors WHERE person_id = p_person_id;
    RETURN v_actor_id;
END fn_get_actor_id;
/