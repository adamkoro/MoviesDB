CREATE OR REPLACE VIEW vw_movie_director AS
SELECT 
    m.id AS movie_id,
    m.title AS movie_title,
    d.name AS director_name
FROM 
    movies m
LEFT JOIN 
    directors d ON m.director_id = d.id;