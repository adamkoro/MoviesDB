CREATE TABLE movie_genre_h (
    movie_id NUMBER,
    genre_id NUMBER,
    created_on TIMESTAMP(6),
	last_mod TIMESTAMP(6),
	dml_flag VARCHAR2(1),
	version NUMBER
);
