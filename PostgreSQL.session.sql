--CREATE DATABASE

-- CREATE DATABASE worldcup;

--DELETE TABLES
DROP TABLE IF EXISTS games;
DROP TABLE IF EXISTS teams;


--CREATE TABLES
CREATE TABLE teams (
  team_id SERIAL PRIMARY KEY,
  name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE games (
  game_id SERIAL PRIMARY KEY,
  year INT NOT NULL,
  round VARCHAR(100) NOT NULL,
  winner_id INT NOT NULL REFERENCES teams(team_id),
  opponent_id INT NOT NULL REFERENCES teams(team_id),
  winner_goals INT NOT NULL,
  opponent_goals INT NOT NULL
);