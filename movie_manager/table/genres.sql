CREATE TABLE genres (
    id NUMBER,
    genre VARCHAR2(250 CHAR) NOT NULL,
    created_on TIMESTAMP(6),
	last_mod TIMESTAMP(6),
	dml_flag VARCHAR2(1),
	version NUMBER
);
