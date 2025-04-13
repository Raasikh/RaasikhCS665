# RaasikhCS665
ChessDatabase
# ♟️ ChessApp

A full-stack web application that manages players, games, AI matches, and leaderboard data for a chess platform — powered by Python (Flask) and Microsoft SQL Server.

> 🔌 Deployed locally with Cloudflare Tunnel for public access — no cloud hosting needed!

---

## 🚀 Features

- ✅ Create, Update, and Delete records for:
  - Users
  - Human vs Human Games
  - AI Games
  - Leaderboard entries
- 📊 Run Predefined SQL Analytics (via buttons in the web UI):
  - **JOIN**: View all games with player usernames
  - **Subquery**: Top 3 players by Elo rating
  - AI match history (Expert-level filter)
  - Leaderboard with usernames
- 🌐 Public access via Cloudflare Tunnel

---

## 🛠️ Tech Stack

| Layer        | Tech                        |
|--------------|-----------------------------|
| Backend      | Python (Flask)              |
| Database     | Microsoft SQL Server        |
| Driver       | pyodbc                      |
| Tunnel       | [cloudflared](https://developers.cloudflare.com/cloudflare-one/connections/connect-apps/) |
| Frontend     | HTML forms with Flask       |

---

## 🧱 Database Schema (3NF)

The schema includes 4 main tables:

- `Users`
- `Games`
- `AI_Games`
- `Leaderboard`

Includes primary/foreign keys, default timestamps, and normalized structure.

You can find the schema creation script in: [`create.sql`](./create.sql)

---

## 📦 Setup Instructions

##  How to Run 

1. Clone the repo: `git clone https://github.com/yourusername/chessapp.git && cd chessapp`
2. Install requirements: `pip install flask pyodbc`
3. Ensure Microsoft SQL Server is running and you’ve created a database named `ChessApp` using the provided schema file (`create.sql`).
4. Run the Flask app: `python app.py`
5. (Optional) Start Cloudflare tunnel in a second terminal: `cloudflared tunnel --url http://localhost:5000`

## 📊 Analytics Dashboard Queries 

1) Games with player names (JOIN on Users)
2) AI Games filtered by difficulty (WHERE ai_difficulty = 'Expert')
3) Leaderboard JOIN with Users
4) Top 3 Users by Elo (ORDER BY elo_rating DESC LIMIT 3)

## 📚 Learning Outcomes 

1)SQL 3NF design 
Safe parameterized SQL queries 
Flask with MSSQL via pyodbc 
Deploying local apps securely with Cloudflare Tunnel


## 🙌 Thanks 

Cloudflare for free secure tunneling 

ChatGPT for schema and route logic brainstorming 

SQL Server for robust relational support

## 👋 Contact Me

LinkedIn: [https://www.linkedin.com/in/raasikh-ahmed/]

Email: Raasikhahmed@gmail.com
