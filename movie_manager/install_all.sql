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
@./sequences/person_id_seq.sql
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
@./table/person.sql
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
@./table/person_h.sql
PROMPT Install log tables done.

-- Install constrains
PROMPT =====================================================
PROMPT Installing constrains...
PROMPT =====================================================
@./alter/movies_const.sql
@./alter/ratings_const.sql
@./alter/roles_const.sql
@./alter/actors_const.sql
@./alter/directors_const.sql
PROMPT Install constrains done.

-- Install types
PROMPT =====================================================
PROMPT Installing types...
PROMPT =====================================================
@./type/ty_movies.sql
PROMPT Install types done.

-- Packages
PROMPT =====================================================
PROMPT Installing packages...
PROMPT =====================================================
@./package/actor_management_pkg.pck
@./package/director_management_pkg.pck
@./package/genre_management_pkg.pck
@./package/movie_management_pkg.pck
@./package/person_management_pkg.pck
@./package/rating_management_pkg.pck
@./package/role_management_pkg.pck
PROMPT Install packages done

-- Functions
PROMPT =====================================================
PROMPT Installing functions...
PROMPT =====================================================
@./functions/fn_get_actor_id.sql
@./functions/fn_get_director_id.sql
@./functions/fn_get_genre_id.sql
@./functions/fn_get_movie_id.sql
@./functions/fn_get_person_id.sql
PROMPT Install functions done

-- Views
PROMPT =====================================================
PROMPT Installing views...
PROMPT =====================================================
@./view/vw_movie_info.sql
@./view/vw_actor_movie_role.sql
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
@./trigger/person_trg.sql
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
@./trigger/log_trigger/person_h_trg.sql
PROMPT Install log triggers done.

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

-- Test
PROMPT =====================================================
PROMPT Run tests...
PROMPT =====================================================
@./script/test_create_movie_all_data.sql
@./script/test_update_movie.sql
@./script/test_delete_movie.sql
PROMPT Tests done.

PROMPT =====================================================
PROMPT Done.
PROMPT =====================================================
