# 🚀 ResumeAI Pro — Complete Setup Guide of the project 

## ⚡ Quick Start (3 Steps)

### Step 1 — Install Node.js (One-time only)
- **Windows/Mac**: Download from [nodejs.org](https://nodejs.org) → Install LTS version
- **Ubuntu/Debian**: `sudo apt install nodejs npm`
- **Mac (Homebrew)**: `brew install node`

### Step 2 — Start the App

***Windows:***
```
Double-click: START_WINDOWS.bat
```

**Mac / Linux:**
```bash
chmod +x start_mac_linux.sh
./start_mac_linux.sh
```

**Manual (any OS):**
```bash
cd server
npm install
node index.js
```

### Step 3 — Open in Browser
```
http://localhost:3001
```

---

## 🔐 Demo Account (Ready to Use)
- **Email**: `demo@resumeai.pro`
- **Password**: `Demo@1234`

Or click **"Try Demo Account"** on the login page.

---

## 📁a complete Project Structure
```
resumeai/
├── START_WINDOWS.bat       ← Double-click to start (Windows)
├── start_mac_linux.sh      ← Run to start (Mac/Linux)
├── README.md
├── server/
│   ├── index.js            ← Express backend server
│   ├── package.json        ← Node.js dependencies
│   ├── .env                ← Configuration (port, JWT secret, SMTP)
│   └── resumeai.db         ← SQLite database (auto-created on first run)
└── client/
    └── index.html          ← Frontend (served by the server)
```

---

## ✅ Features — All Working

### 🔐 Authentication (Real JWT + bcrypt)
- Register with name, email, password
- Login with JWT tokens (7-day session)
- Password hashing with bcrypt (12 rounds)
- Change password with current password verification
- Profile editing (name, email)

### 📝 Resume Builder
- Create multiple resumes per account
- 4 professional templates (Classic, Modern, Executive, Minimal)
- Live preview updates as you type
- Full CRUD for all sections:
  - Personal info (name, email, phone, location, LinkedIn, portfolio, summary)
  - Work experience with bullet points
  - Education with GPA
  - Skills with tag UI + suggestions
  - Projects with tech stack
  - Certifications
- PDF export (browser print-to-PDF)

### 🎯 ATS Analyzer (100-point scoring)
- Personal info completeness (20 pts)
- Experience quality — verbs, quantified results (28 pts)
- Education section (12 pts)
- Skills count and tech keyword match (18 pts)
- Projects section (12 pts)
- Certifications (5 pts)
- Content quality — word count (5 pts)
- Issues list with direct fix links
- Improvement suggestions
- Score saved to history automatically

### 🔍 Job Matcher (Real keyword analysis)
- Paste any job description
- Extracts and compares all keywords
- Calculates % match score
- Shows matched vs missing tech skills
- Click missing skills to add to resume
- Match history saved to database

### ✨ AI Assistant
- Bullet point generator (5 power variants)
- Sentence improver (3 professional versions)
- Power verb library (click to copy)
- Skill gap analysis vs 8 target roles
- Click-to-add missing skills

### 📊 Analytics
- ATS score trend chart (Chart.js)
- Skill category breakdown (doughnut chart)
- Skill distribution bar chart
- Job match history
- All stats from real database data

### 🕐 ATS History
- Full history log with dates and scores
- Score change tracking (up/down arrows)
- Grade labels (A+, A, B, C, D)
- Line chart of progress over time

### 📧 Email
- Opens your email client (mailto)
- Pre-fills subject and body with resume details
- SMTP support: add credentials to .env for server-side sending

### ⚙️ Settings
- Profile editing (saved to database)
- Password change (validated against current)
- Dark/light mode toggle
- Sign out

---

## 🗃️ Database (SQLite — No Installation Needed)

The database is automatically created at `server/resumeai.db` on first run.

**Tables:**
- `users` — accounts with bcrypt passwords
- `resumes` — resume metadata and personal info
- `experience` — work history entries
- `education` — education entries
- `projects` — portfolio projects
- `certifications` — certification records
- `ats_history` — all ATS scores with timestamps
- `job_matches` — job match results history

**To view database** (optional):
- Install [DB Browser for SQLite](https://sqlitebrowser.org/) (free)
- Open `server/resumeai.db`

---

## ⚙️ Configuration (server/.env)

```env
PORT=3001                          # Server port
JWT_SECRET=change-this-in-prod     # JWT signing secret

# Optional: SMTP for email sending
SMTP_HOST=smtp.gmail.com
SMTP_PORT=587
SMTP_USER=your-gmail@gmail.com
SMTP_PASS=your-16-char-app-password

# Optional: CORS (if serving frontend separately)
CLIENT_URL=http://localhost:3001
```

**Gmail SMTP Setup:**
1. Go to Google Account → Security → 2-Step Verification (enable it)
2. Then go to App Passwords → Generate a 16-char password
3. Use that password as `SMTP_PASS`

---

## 🔧 Troubleshooting

**"Cannot connect to server" error in browser:**
- Make sure the server is running (`node index.js` in /server)
- Check the terminal for any error messages
- Make sure nothing else is running on port 3001

**"npm install failed":**
- Try: `npm install --legacy-peer-deps`
- Or: delete `server/node_modules` folder and run npm install again

**"node is not recognized" (Windows):**
- Restart your terminal/command prompt after installing Node.js
- Or run: `where node` to verify installation

**Port already in use:**
- Change `PORT=3002` in server/.env
- Then open `http://localhost:3002`

**Database issues:**
- Delete `server/resumeai.db` to reset (loses all data)
- Server auto-creates fresh database on next start

---

## 🛡️ Security Features
- Passwords hashed with bcrypt (12 rounds)
- JWT tokens expire after 7 days
- Rate limiting: 200 req/15min general, 20 req/15min auth
- SQL injection protected via parameterized queries
- Helmet.js security headers
- CORS configured

---

## 📦 Tech Stack
| Component | Technology |
|-----------|------------|
| Backend | Node.js + Express |
| Database | SQLite (better-sqlite3) |
| Auth | JWT + bcrypt |
| Frontend | Vanilla JS + Chart.js |
| PDF Export | Browser print-to-PDF |
| Email | Nodemailer (mailto fallback) |
| Styling | Pure CSS (no framework) |
| Fonts | Google Fonts (Outfit) ||

---

*ResumeAI Pro — All features are working, data persisted in SQLite*
