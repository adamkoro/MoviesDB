CREATE TABLE ratings_h (
    id NUMBER,
    movie_id NUMBER,
    username VARCHAR2(100 CHAR),
    rating NUMBER,
    created_on TIMESTAMP(6),
	last_mod TIMESTAMP(6),
	dml_flag VARCHAR2(1),
	version NUMBER
);
