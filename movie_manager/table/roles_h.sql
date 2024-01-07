CREATE TABLE roles_h (
    movie_id NUMBER,
    actor_id NUMBER,
    role VARCHAR2(100 CHAR),
    created_on TIMESTAMP(6),
	last_mod TIMESTAMP(6),
	dml_flag VARCHAR2(1),
	version NUMBER
);
