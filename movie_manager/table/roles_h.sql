CREATE TABLE roles_h (
    movie_id NUMBER,
    actor_id NUMBER,
    role VARCHAR2(100 CHAR),
    creation_time TIMESTAMP(6),
    creator_user VARCHAR2(250 CHAR),
    mod_user VARCHAR2(250 CHAR),
    mod_time TIMESTAMP(6),
    dml_flag CHAR(1),
    version NUMBER
);
