CREATE TABLE ratings (
    id NUMBER,
    movie_id NUMBER NOT NULL,
    username VARCHAR2(100 CHAR) NOT NULL,
    rating NUMBER NOT NULL,
    created_on TIMESTAMP(6),
	last_mod TIMESTAMP(6),
	dml_flag VARCHAR2(1),
	version NUMBER
);
