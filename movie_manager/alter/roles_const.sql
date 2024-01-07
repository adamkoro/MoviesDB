ALTER TABLE roles 
ADD CONSTRAINT fk_roles_movie_id FOREIGN KEY(movie_id) REFERENCES movies(id);
/

ALTER TABLE roles 
ADD CONSTRAINT fk_roles_actor_id FOREIGN KEY(actor_id) REFERENCES actors(id);
/