CREATE TABLE movie_genre (
    movie_id NUMBER NOT NULL,
    genre_id NUMBER NOT NULL,
    created_on TIMESTAMP(6),
	last_mod TIMESTAMP(6),
	dml_flag VARCHAR2(1),
	version NUMBER
);
