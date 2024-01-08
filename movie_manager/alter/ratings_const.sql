ALTER TABLE ratings 
ADD CONSTRAINT fk_ratings_movie_id FOREIGN KEY(movie_id) REFERENCES movies(id);
/

ALTER TABLE ratings
ADD CONSTRAINT rating_value_check CHECK (rating BETWEEN 1 AND 5);
/