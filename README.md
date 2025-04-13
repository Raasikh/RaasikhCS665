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

### 1. Clone the Repo

```bash
git clone https://github.com/yourusername/chessapp.git
cd chessapp
