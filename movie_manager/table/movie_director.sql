CREATE TABLE movie_director (
    movie_id NUMBER NOT NULL,
    director_id NUMBER NOT NULL,
    created_on TIMESTAMP(6),
	last_mod TIMESTAMP(6),
	dml_flag VARCHAR2(1),
	version NUMBER
);
