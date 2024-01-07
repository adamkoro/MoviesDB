PROMPT Installing DB...
-- Install sequences

-- Install tables
PROMPT Installing tables...
@./table/actors.sql
@./table/directors.sql
@./table/genres.sql
@./table/movies.sql
@./table/movie_director.sql
@./table/movie_genre.sql
@./table/ratings.sql
@./table/roles.sql
PROMPT Install tables done.

-- Install log tables
PROMPT Installing log tables...
@./table/actors_h.sql
@./table/directors_h.sql
@./table/genres_h.sql
@./table/movies_h.sql
@./table/movie_director_h.sql
@./table/movie_genre_h.sql
@./table/ratings_h.sql
@./table/roles_h.sql
PROMPT Install log tables done.

-- Install constrains
PROMPT Installing constrains...
-- Primary keys
@./alter/actors_const.sql
@./alter/genres_const.sql
@./alter/movies_const.sql
@./alter/director_const.sql
-- Foreign keys
@./alter/director_genre_const.sql
@./alter/movie_genre_const.sql
@./alter/ratings_const.sql
@./alter/roles_const.sql
PROMPT Install constrains done.

-- Install types
PROMPT Installing types...
@./type/ty_movies.sql
PROMPT Install types done.
-- Packes

-- Views
--@./view/view1.sql

-- Triggers

-- Recompile schema
--BEGIN
--  dbms_utility.compile_schema(schema => 'DOG_MANAGER');
--END;
--/

-- FK
-- Tabla data

PROMPT Done.
