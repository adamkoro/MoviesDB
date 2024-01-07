INSERT INTO genres (id, genre) VALUES
(genres_id_seq.NEXTVAL, 'Sci-Fi');
INSERT INTO directors (id, name, birth_date) VALUES
(directors_id_seq.NEXTVAL, 'Christopher Nolan', TO_DATE('1970-07-30', 'YYYY-MM-DD'));
INSERT INTO actors (id, name, birth_date) VALUES
(actors_id_seq.NEXTVAL, 'Leonardo DiCaprio', TO_DATE('1974-11-11', 'YYYY-MM-DD'));
INSERT INTO movies (id, title, release_year, genre_id, director_id) VALUES
(movies_id_seq.NEXTVAL, 'Inception', TO_DATE('2010', 'YYYY'), genres_id_seq.CURRVAL, directors_id_seq.CURRVAL);
INSERT INTO roles (movie_id, actor_id, role) VALUES
(movies_id_seq.CURRVAL, actors_id_seq.CURRVAL, 'Cobb');
INSERT INTO ratings (id, movie_id, username, rating) VALUES
(ratings_id_seq.NEXTVAL, movies_id_seq.CURRVAL, 'user1', 5);
INSERT INTO ratings (id, movie_id, username, rating) VALUES
(ratings_id_seq.NEXTVAL, movies_id_seq.CURRVAL, 'user2', 5);
COMMIT;

INSERT INTO genres (id, genre) VALUES
(genres_id_seq.NEXTVAL, 'Drama');
INSERT INTO directors (id, name, birth_date) VALUES
(directors_id_seq.NEXTVAL, 'Frank Darabont', TO_DATE('1959-01-28', 'YYYY-MM-DD'));
INSERT INTO actors (id, name, birth_date) VALUES
(actors_id_seq.NEXTVAL, 'Morgan Freeman', TO_DATE('1937-06-01', 'YYYY-MM-DD'));
INSERT INTO movies (id, title, release_year, genre_id, director_id) VALUES
(movies_id_seq.NEXTVAL, 'The Shawshank Redemption', TO_DATE('1994', 'YYYY'), genres_id_seq.CURRVAL, directors_id_seq.CURRVAL);
INSERT INTO roles (movie_id, actor_id, role) VALUES
(movies_id_seq.CURRVAL, actors_id_seq.CURRVAL, 'Andy Dufresne');
INSERT INTO ratings (id, movie_id, username, rating) VALUES
(ratings_id_seq.NEXTVAL, movies_id_seq.CURRVAL, 'user2', 4);
INSERT INTO ratings (id, movie_id, username, rating) VALUES
(ratings_id_seq.NEXTVAL, movies_id_seq.CURRVAL, 'user3', 5);
COMMIT;

INSERT INTO genres (id, genre) VALUES
(genres_id_seq.NEXTVAL, 'Crime');
INSERT INTO directors (id, name, birth_date) VALUES
(directors_id_seq.NEXTVAL, 'Quentin Tarantino', TO_DATE('1963-03-27', 'YYYY-MM-DD'));
INSERT INTO actors (id, name, birth_date) VALUES
(actors_id_seq.NEXTVAL, 'John Travolta', TO_DATE('1954-02-18', 'YYYY-MM-DD'));
INSERT INTO movies (id, title, release_year, genre_id, director_id) VALUES
(movies_id_seq.NEXTVAL, 'Pulp Fiction', TO_DATE('1994', 'YYYY'), genres_id_seq.CURRVAL, directors_id_seq.CURRVAL);
INSERT INTO roles (movie_id, actor_id, role) VALUES
(movies_id_seq.CURRVAL, actors_id_seq.CURRVAL, 'Vincent Vega');
INSERT INTO ratings (id, movie_id, username, rating) VALUES
(ratings_id_seq.NEXTVAL, movies_id_seq.CURRVAL, 'user3', 4);
INSERT INTO ratings (id, movie_id, username, rating) VALUES
(ratings_id_seq.NEXTVAL, movies_id_seq.CURRVAL, 'user1', 3);
COMMIT;
