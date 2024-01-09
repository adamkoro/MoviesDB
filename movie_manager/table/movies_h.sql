CREATE TABLE movies_h (
    id NUMBER,
    title VARCHAR2(250 CHAR),
    release_year DATE,
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