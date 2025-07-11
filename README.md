# 🧠 SkillStack

SkillStack is a full-stack learning tracker built with **Phoenix** and **PostgreSQL**, designed to help users log, manage, and track skills. The backend exposes a clean JSON API, tested entirely via Postman.

---

## 🔧 Features

- ✅ User authentication (`phx.gen.auth`)
- ✅ Skills CRUD via JSON API
- ✅ Fully testable with Postman
- ✅ Phoenix 1.7 project with Ecto/Postgres

---

## 🚀 Getting Started

### 1. Clone the repo

```bash
git clone https://github.com/your_username/skillstack.git
cd skillstack

2. Install dependencies

mix deps.get

3. Setup the database

mix ecto.create
mix ecto.migrate

4. Start the Phoenix server

mix phx.server

Visit: http://localhost:4000

⸻

📂 Project Structure

lib/
├── skillstack/              # Contexts (Accounts, Skills)
│   ├── accounts/            # User schema + auth
│   └── skills/              # Skill schema + logic
├── skillstack_web/          # Web/API layer (controllers, views, router)
priv/repo/migrations/        # Ecto migrations


⸻

🧪 API Endpoints (Test with Postman)

➕ Create Skill

POST /api/skills
Headers:
  Content-Type: application/json

Body:
{
  "skill": {
    "name": "Phoenix",
    "level": 4
  }
}

📄 Get All Skills

GET /api/skills

🔍 Get a Single Skill

GET /api/skills/:id

✏️ Update Skill

PUT /api/skills/:id

Body:
{
  "skill": {
    "name": "Phoenix",
    "level": 5
  }
}

❌ Delete Skill

DELETE /api/skills/:id


⸻

📌 Upcoming
	•	Link skills to authenticated user (user_id)
	•	Build Goals, Projects, and Logs features
	•	React frontend integration

⸻

👤 Author

Likith Manoj M
📫 likithmanoj@gmail.com
🌐 github.com/likithmanoj

⸻

📝 License

MIT License

---
```
