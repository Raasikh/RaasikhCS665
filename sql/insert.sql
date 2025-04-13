-- insert.sql
-- Sample data for Chess Game Database (no moves columns)

-- Insert Users
INSERT INTO Users (username, email, password_hash, elo_rating) VALUES
('KnightMaster', 'knight@example.com', 'hashed_pw1', 1350),
('QueenSlayer', 'queen@example.com', 'hashed_pw2', 1480),
('PawnStar', 'pawn@example.com', 'hashed_pw3', 1200),
('BishopBoss', 'bishop@example.com', 'hashed_pw4', 1420);

-- Insert Games (without moves)
INSERT INTO Games (player1_id, player2_id, winner_id, game_date, game_type) VALUES
(1, 2, 2, '2024-11-01 14:23:00', 'PVP'),
(3, 1, 1, '2024-11-02 18:00:00', 'PVP'),
(2, 4, NULL, '2024-11-03 10:15:00', 'PVP');

-- Insert AI Games (without moves)
INSERT INTO AI_Games (user_id, ai_difficulty, result, game_date) VALUES
(1, 'Medium', 'Win', '2024-11-04 12:00:00'),
(2, 'Hard', 'Loss', '2024-11-05 16:45:00'),
(3, 'Easy', 'Draw', '2024-11-06 09:30:00');

-- Insert Leaderboard
INSERT INTO Leaderboard (user_id, elo_rating, last_game_date) VALUES
(2, 1480, '2024-11-03 10:15:00'),
(4, 1420, '2024-11-03 10:15:00'),
(1, 1350, '2024-11-04 12:00:00'),
(3, 1200, '2024-11-06 09:30:00');
