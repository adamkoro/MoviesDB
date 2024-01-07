ALTER TABLE movie_director
ADD CONSTRAINT fk_movie_director_movie_id FOREIGN KEY(movie_id) REFERENCES movies(id);

ALTER TABLE movie_director
ADD CONSTRAINT fk_movie_director_director_id FOREIGN KEY(director_id) REFERENCES directors(id);