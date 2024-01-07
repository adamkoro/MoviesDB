DECLARE
    v_actor_id actors.id%TYPE;
BEGIN
    add_actor('Keanu Reeves', TO_DATE('1964-09-02', 'YYYY-MM-DD'));
END;
/
COMMIT;