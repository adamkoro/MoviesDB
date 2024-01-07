CREATE TABLE ratings_h (
    id NUMBER,
    movie_id NUMBER,
    username VARCHAR2(100 CHAR),
    rating NUMBER,
    creation_time TIMESTAMP(6),
    creator_user VARCHAR2(250 CHAR),
    mod_user VARCHAR2(250 CHAR),
    mod_time TIMESTAMP(6),
    dml_flag CHAR(1),
    version NUMBER
);
