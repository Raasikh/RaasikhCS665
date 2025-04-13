-- crud.sql
-- CRUD operations for Chess Game Database

-- CREATE: Add a new user
INSERT INTO Users (username, email, password_hash, elo_rating)
VALUES ('RookRuler', 'rook@example.com', 'hashed_pw5', 1300);

-- READ: Fetch all users with Elo above 1300
SELECT username, elo_rating FROM Users
WHERE elo_rating > 1300
ORDER BY elo_rating DESC;

-- UPDATE: Change Elo rating for a specific user
UPDATE Users
SET elo_rating = 1500
WHERE username = 'KnightMaster';

-- DELETE: Remove a user by username
DELETE FROM Users
WHERE username = 'PawnStar';

-- READ (JOIN): Show leaderboard with usernames
SELECT L.rank, U.username, L.elo_rating, L.last_game_date
FROM Leaderboard L
JOIN Users U ON L.user_id = U.user_id
ORDER BY L.rank;

-- READ (Subquery): Get users who won any games
SELECT username FROM Users
WHERE user_id IN (SELECT winner_id FROM Games WHERE winner_id IS NOT NULL);