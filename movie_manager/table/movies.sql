CREATE TABLE movies (
    id NUMBER PRIMARY KEY,
    title VARCHAR2(250 CHAR) NOT NULL UNIQUE,
    release_year DATE NOT NULL,
    genre_id NUMBER,
    director_id NUMBER,
    creation_time TIMESTAMP(6),
    creator_user VARCHAR2(250 CHAR),
    mod_user VARCHAR2(250 CHAR),
    mod_time TIMESTAMP(6),
    dml_flag CHAR(1),
    version NUMBER
);
/