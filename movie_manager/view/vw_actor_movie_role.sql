CREATE OR REPLACE VIEW vw_actor_movie_role AS
SELECT 
    m.id AS movie_id,
    m.title AS movie_title,
    p.name AS actor_name,
    r.role AS actor_role
FROM 
    movies m
LEFT JOIN 
    roles r ON m.id = r.movie_id
LEFT JOIN 
    actors a ON r.actor_id = a.id
LEFT JOIN 
    person p ON a.person_id = p.id;