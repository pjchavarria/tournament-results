-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

--
-- Players table
--
CREATE TABLE Player (
	player_id	serial PRIMARY KEY,
	name		varchar(50) NOT NULL
);

--
-- Match table
--
CREATE TABLE Match (
	match_id 	serial PRIMARY KEY,
	winner_id	integer NOT NULL references Player (player_id),
	loser_id	integer NOT NULL references Player (player_id)
);

--
-- This view shows player standings aggegating information 
-- from Player and Match tables.
-- Result: player id, player name, win count, play count.
--
CREATE VIEW Player_Standings AS
	SELECT p.player_id, p.name, count(m.winner_id) AS wins, p.plays
    FROM (
    	SELECT player.player_id, player.name, count(match.winner_id) AS plays
	    FROM player LEFT JOIN match
	    ON player.player_id = match.winner_id OR player.player_id = match.loser_id
	    GROUP BY player.player_id
	) p 
    LEFT JOIN match m
    ON p.player_id = m.winner_id
    GROUP BY p.player_id, p.name, p.plays;