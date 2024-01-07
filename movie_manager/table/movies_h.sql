CREATE TABLE movies_h (
    id NUMBER,
    title VARCHAR2(250 CHAR),
    release_year DATE,
    created_on TIMESTAMP(6),
	last_mod TIMESTAMP(6),
	dml_flag VARCHAR2(1),
	version NUMBER
);
