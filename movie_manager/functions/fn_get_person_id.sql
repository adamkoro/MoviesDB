CREATE OR REPLACE FUNCTION fn_get_person_id(p_name person.name%TYPE, p_birth_date person.birth_date%TYPE)
RETURN person.id%TYPE IS
    v_person_id person.id%TYPE;
BEGIN
    SELECT id INTO v_person_id FROM person WHERE name = p_name;
    RETURN v_person_id;
END fn_get_person_id;
/