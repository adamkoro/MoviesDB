ALTER TABLE actors
ADD CONSTRAINT fk_actors_person_id FOREIGN KEY(person_id) REFERENCES person(id);
/