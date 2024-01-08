CREATE OR REPLACE VIEW vw_movie_director AS
SELECT 
    m.id AS movie_id,
    m.title AS movie_title,
    p.name AS director_name
FROM 
    movies m
LEFT JOIN 
    directors d ON m.director_id = d.id
LEFT JOIN 
    person p ON d.person_id = p.id;
