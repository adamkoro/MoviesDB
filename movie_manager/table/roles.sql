CREATE TABLE roles (
    movie_id NUMBER NOT NULL,
    actor_id NUMBER NOT NULL,
    role VARCHAR2(100 CHAR) NOT NULL,
    created_on TIMESTAMP(6),
	last_mod TIMESTAMP(6),
	dml_flag VARCHAR2(1),
	version NUMBER
);
