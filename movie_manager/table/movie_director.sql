CREATE TABLE movie_director (
    movie_id NUMBER NOT NULL,
    director_id NUMBER NOT NULL,
    id NUMBER,
    creation_time TIMESTAMP(6),
    creator_user VARCHAR2(250 CHAR),
    mod_user VARCHAR2(250 CHAR),
    mod_time TIMESTAMP(6),
    dml_flag CHAR(1),
    version NUMBER
);
