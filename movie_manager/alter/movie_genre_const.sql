ALTER TABLE movie_genre
ADD CONSTRAINT movie_genre_pk PRIMARY KEY (id);

ALTER TABLE movie_genre 
ADD CONSTRAINT fk_movie_genre_genre_id FOREIGN KEY(genre_id) REFERENCES genres(id);

ALTER TABLE movie_genre 
ADD CONSTRAINT fk_movie_genre_movie_id FOREIGN KEY(movie_id) REFERENCES movies(id);