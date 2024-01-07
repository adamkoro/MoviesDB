CREATE TABLE genres_h (
    id NUMBER,
    genre VARCHAR2(250 CHAR),
    created_on TIMESTAMP(6),
	last_mod TIMESTAMP(6),
	dml_flag VARCHAR2(1),
	version NUMBER
);
