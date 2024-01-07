CREATE TABLE roles (
    movie_id NUMBER NOT NULL,
    actor_id NUMBER NOT NULL,
    id NUMBER,
    role VARCHAR2(100 CHAR) NOT NULL,
    creation_time TIMESTAMP(6),
    creator_user VARCHAR2(250 CHAR),
    mod_user VARCHAR2(250 CHAR),
    mod_time TIMESTAMP(6),
    dml_flag CHAR(1),
    version NUMBER
);
