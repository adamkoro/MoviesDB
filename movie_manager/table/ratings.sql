CREATE TABLE ratings (
    id NUMBER,
    movie_id NUMBER NOT NULL,
    username VARCHAR2(100 CHAR) NOT NULL,
    rating NUMBER NOT NULL,
    creation_time TIMESTAMP(6),
    creator_user VARCHAR2(250 CHAR),
    mod_user VARCHAR2(250 CHAR),
    mod_time TIMESTAMP(6),
    dml_flag CHAR(1),
    version NUMBER
);
/