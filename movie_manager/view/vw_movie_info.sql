CREATE OR REPLACE VIEW movie_info AS
SELECT 
    m.id AS movie_id,
    m.title AS movie_title,
    m.release_year AS movie_release_year,
    g.genre AS movie_genre,
    d.name AS director_name,
    a.name AS actor_name,
    a.birth_date AS actor_birth_date,
    r.role AS actor_role,
    AVG(ra.rating) AS average_movie_rating
FROM 
    movies m
LEFT JOIN 
    genres g ON m.genre_id = g.id
LEFT JOIN 
    directors d ON m.director_id = d.id
LEFT JOIN 
    roles r ON m.id = r.movie_id
LEFT JOIN 
    actors a ON r.actor_id = a.id
LEFT JOIN 
    ratings ra ON m.id = ra.movie_id
GROUP BY 
    m.id,
    m.title,
    m.release_year,
    g.genre,
    d.name,
    a.name,
    a.birth_date,
    r.role;
