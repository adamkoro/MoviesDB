PROMPT =====================================================
PROMPT Installing DB...
PROMPT =====================================================

-- Install sequences
PROMPT =====================================================
PROMPT Installing sequences...
PROMPT =====================================================
@./sequences/actors_id_seq.sql
@./sequences/directors_id_seq.sql
@./sequences/genres_id_seq.sql
@./sequences/movies_id_seq.sql
@./sequences/ratings_id_seq.sql
@./sequences/roles_id_seq.sql
PROMPT Install sequences done.

-- Install tables
PROMPT =====================================================
PROMPT Installing tables...
PROMPT =====================================================
@./table/actors.sql
@./table/directors.sql
@./table/genres.sql
@./table/movies.sql
@./table/ratings.sql
@./table/roles.sql
PROMPT Install tables done.

-- Install log tables
PROMPT =====================================================
PROMPT Installing log tables...
PROMPT =====================================================
@./table/actors_h.sql
@./table/directors_h.sql
@./table/genres_h.sql
@./table/movies_h.sql
@./table/ratings_h.sql
@./table/roles_h.sql
PROMPT Install log tables done.

-- Install constrains
PROMPT =====================================================
PROMPT Installing constrains...
PROMPT =====================================================
-- Primary keys
@./alter/actors_const.sql
@./alter/genres_const.sql
@./alter/movies_const.sql
@./alter/director_const.sql
-- Foreign keys
@./alter/ratings_const.sql
@./alter/roles_const.sql
PROMPT Install constrains done.

-- Install types
PROMPT =====================================================
PROMPT Installing types...
PROMPT =====================================================
@./type/ty_movies.sql
PROMPT Install types done.
-- Packes

-- Views
PROMPT =====================================================
PROMPT Installing views...
PROMPT =====================================================
@./view/vw_movie_info.sql
@./view/actor_movie_role.sql
@./view/vw_movie_director.sql
PROMPT Install views done

-- Triggers
PROMPT =====================================================
PROMPT Installing triggers...
PROMPT =====================================================
@./trigger/actors_trg.sql
@./trigger/directors_trg.sql
@./trigger/genres_trg.sql
@./trigger/movies_trg.sql
@./trigger/ratings_trg.sql
@./trigger/roles_trg.sql
PROMPT Install triggers done.

-- Log triggers
PROMPT =====================================================
PROMPT Installing log triggers...
PROMPT =====================================================
@./trigger/log_trigger/actors_h_trg.sql
@./trigger/log_trigger/directors_h_trg.sql
@./trigger/log_trigger/genres_h_trg.sql
@./trigger/log_trigger/movies_h_trg.sql
@./trigger/log_trigger/ratings_h_trg.sql
@./trigger/log_trigger/roles_h_trg.sql
PROMPT Install log triggers done.

-- Producers
PROMPT =====================================================
PROMPT Installing producers...
PROMPT =====================================================
@./procedures/add_actor.sql
@./procedures/add_genre.sql
@./procedures/add_movie.sql
@./procedures/add_director.sql
@./procedures/add_rating.sql
@./procedures/add_role.sql
PROMPT Install producers done.

-- Recompile schema
PROMPT =====================================================
PROMPT Recompiling schema...
PROMPT =====================================================
BEGIN
    dbms_utility.compile_schema(schema => 'MOVIE_MANAGER');
END;
/
PROMPT Recompile schema done.

-- Table data
PROMPT =====================================================
PROMPT Uploading data...
PROMPT =====================================================
@./data/data_fill.sql
PROMPT Upload data done.

PROMPT =====================================================
PROMPT Done.
PROMPT =====================================================
