CREATE TABLE actors (
    id NUMBER,
    name VARCHAR2(250 CHAR) NOT NULL,
    birth_date DATE NOT NULL,
    created_on TIMESTAMP(6),
	last_mod TIMESTAMP(6),
	dml_flag VARCHAR2(1),
	version NUMBER
);
