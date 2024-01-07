ALTER TABLE movies
ADD CONSTRAINT movies_pk PRIMARY KEY (id);
/
ALTER TABLE movies
ADD CONSTRAINT fk_movies_genre_id FOREIGN KEY(genre_id) REFERENCES genres(id);
/
ALTER TABLE movies
ADD CONSTRAINT fk_movies_director_id FOREIGN KEY(director_id) REFERENCES directors(id);
/
