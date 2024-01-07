CREATE TABLE actors (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(250 CHAR) NOT NULL UNIQUE,
    birth_date DATE NOT NULL,
    creation_time TIMESTAMP(6),
    creator_user VARCHAR2(250 CHAR),
    mod_user VARCHAR2(250 CHAR),
    mod_time TIMESTAMP(6),
    dml_flag CHAR(1),
    version NUMBER
);
/