ALTER TABLE ratings
ADD CONSTRAINT ratings_pk PRIMARY KEY (id);

ALTER TABLE ratings 
ADD CONSTRAINT fk_ratings_movie_id FOREIGN KEY(movie_id) REFERENCES movies(id);
