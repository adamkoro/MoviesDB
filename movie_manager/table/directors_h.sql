CREATE TABLE directors_h (
    id NUMBER,
    name VARCHAR2(250 CHAR),
    birth_date DATE,
    creation_time TIMESTAMP(6),
    creator_user VARCHAR2(250 CHAR),
    mod_user VARCHAR2(250 CHAR),
    mod_time TIMESTAMP(6),
    dml_flag CHAR(1),
    version NUMBER
);
/