CREATE TABLE movie_director_h (
    movie_id NUMBER,
    director_id NUMBER,
    created_on TIMESTAMP(6),
	last_mod TIMESTAMP(6),
	dml_flag VARCHAR2(1),
	version NUMBER
);
