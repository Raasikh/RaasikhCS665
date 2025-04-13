-- create.sql
-- Chess Game Database Schema (in 3NF) for Microsoft SQL Server

-- Drop tables if they exist to avoid duplicate object errors
IF OBJECT_ID('Leaderboard', 'U') IS NOT NULL DROP TABLE Leaderboard;
IF OBJECT_ID('AI_Games', 'U') IS NOT NULL DROP TABLE AI_Games;
IF OBJECT_ID('Games', 'U') IS NOT NULL DROP TABLE Games;
IF OBJECT_ID('Users', 'U') IS NOT NULL DROP TABLE Users;

CREATE TABLE Users (
    user_id INT PRIMARY KEY IDENTITY(1,1),
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    elo_rating INT DEFAULT 1200
    -- Functional Dependency: (user_id) ? (username, email, password_hash, elo_rating)
);

CREATE TABLE Games (
    game_id INT PRIMARY KEY IDENTITY(1,1),
    player1_id INT,
    player2_id INT NULL,
    winner_id INT NULL,
    game_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    game_type VARCHAR(10) CHECK (game_type IN ('PVP', 'AI')) NOT NULL,
    FOREIGN KEY (player1_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (player2_id) REFERENCES Users(user_id) ON DELETE NO ACTION,
    FOREIGN KEY (winner_id) REFERENCES Users(user_id) ON DELETE NO ACTION
    -- Functional Dependency: (game_id) ? (player1_id, player2_id, winner_id, game_date, game_type)
);

CREATE TABLE AI_Games (
    ai_game_id INT PRIMARY KEY IDENTITY(1,1),
    user_id INT,
    ai_difficulty VARCHAR(10) CHECK (ai_difficulty IN ('Easy', 'Medium', 'Hard', 'Expert')),
    result VARCHAR(10) CHECK (result IN ('Win', 'Loss', 'Draw')) NOT NULL,
    game_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
    -- Functional Dependency: (ai_game_id) ? (user_id, ai_difficulty, result, game_date)
);

CREATE TABLE Leaderboard (
    rank INT PRIMARY KEY IDENTITY(1,1),
    user_id INT UNIQUE,
    elo_rating INT NOT NULL,
    last_game_date DATETIME,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
    -- Functional Dependency: (rank) ? (user_id, elo_rating, last_game_date)
);
