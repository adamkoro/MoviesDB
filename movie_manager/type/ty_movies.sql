CREATE OR REPLACE TYPE ty_movies AS OBJECT (
  id INTEGER,
  title VARCHAR2(250 CHAR),
  release_year DATE,
  director VARCHAR2(250 CHAR),
  genre VARCHAR2(250 CHAR)
);
/

CREATE OR REPLACE TYPE ty_movies_list IS TABLE OF ty_movies;
/