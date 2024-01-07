CREATE TABLE genres (
    id NUMBER PRIMARY KEY,
    genre VARCHAR2(250 CHAR) NOT NULL UNIQUE,
    creation_time TIMESTAMP(6),
    creator_user VARCHAR2(250 CHAR),
    mod_user VARCHAR2(250 CHAR),
    mod_time TIMESTAMP(6),
    dml_flag CHAR(1),
    version NUMBER
);
/