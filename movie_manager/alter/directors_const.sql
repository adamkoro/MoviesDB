ALTER TABLE directors
ADD CONSTRAINT fk_actors_directors_id FOREIGN KEY(person_id) REFERENCES person(id);
/