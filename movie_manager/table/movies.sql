CREATE TABLE movies (
    id NUMBER,
    title VARCHAR2(250 CHAR) NOT NULL,
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