# Career Agent (Cursor Skill)

Personal Cursor Agent skill for LinkedIn profile updates, job search, resume tailoring, and application drafts.

## Install

Clone into your Cursor personal skills folder:

```bash
git clone https://github.com/aakash_patil14/career-agent.git "%USERPROFILE%\.cursor\skills\career-agent"
```

Or copy the `career-agent` folder to `~/.cursor/skills/career-agent`.

## Setup

1. Copy the example profile and tracker:

   ```bash
   copy data\profile.example.md data\profile.md
   copy data\tracker.example.md data\tracker.md
   ```

2. Fill in `data/profile.md` with your experience and target roles.

3. In Cursor Agent chat, use plain commands:

   - `Update my LinkedIn profile`
   - `Search for [role] jobs in [location]`
   - `Apply to this job` + paste job description
   - `Process my shortlist and prepare applications`

## What it does

| You say | Agent does |
|---------|------------|
| Update LinkedIn | Drafts headline, About, experience (you paste on LinkedIn) |
| Search jobs | Shortlists roles, updates tracker |
| Apply / batch apply | Tailored resume + cover letter per job in `data/applications/` |

**Note:** The agent prepares drafts. You submit applications yourself (login, captcha, final Submit).

## Structure

```
career-agent/
├── SKILL.md              # Main skill (auto-triggers on career keywords)
├── reference/            # LinkedIn, resume, applications, pipeline workflows
└── data/                 # Your local profile & tracker (gitignored)
```

## License

MIT — use and adapt freely.
