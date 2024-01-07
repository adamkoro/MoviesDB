CREATE TABLE movies (
    id NUMBER,
    title VARCHAR2(250 CHAR) NOT NULL,
    release_year DATE NOT NULL,
    created_on TIMESTAMP(6),
	last_mod TIMESTAMP(6),
	dml_flag VARCHAR2(1),
	version NUMBER
);
