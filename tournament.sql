-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- Create a table that stores players' names and unique ids
CREATE TABLE players(
	id 		SERIAL PRIMARY KEY,
	name 	VARCHAR(100)
);

CREATE TABLE tour_general(
	tour_id 	SERIAL PRIMARY KEY,
	tour_name   VARCHAR(100) NOT NULL,
	tot_num_of_players	SMALLINT NOT NULL,
	winner 		SMALLINT REFERENCES players(id)
	);

CREATE TABLE match_record(
	tour_id 	SMALLINT REFERENCES tour_general(tour_id),
	player1_id  SMALLINT REFERENCES players(id),
	player2_id  SMALLINT REFERENCES players(id)
);

CREATE TABLE standing(
	id 		SMALLINT REFERENCES players(id),
	name    VARCHAR(100),
	wins    SMALLINT, 
	matchs  SMALLINT
);
