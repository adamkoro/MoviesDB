DECLARE
    v_director_id directors.id%TYPE;
BEGIN
    add_director('Joel Silver', TO_DATE('1952-05-22', 'YYYY-MM-DD'));
END;
/
COMMIT;