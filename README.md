# Career Agent (Cursor Skill)

Personal Cursor Agent skill for resume-based job search, resume tailoring, and application drafts. LinkedIn optimization is optional and should be skipped until the user says their profile is ready.

## Install

Clone into your Cursor personal skills folder:

```bash
git clone https://github.com/aakashpatil14/career-agent.git "%USERPROFILE%\\.cursor\\skills\\career-agent"
```

Or copy the `career-agent` folder to `~/.cursor/skills/career-agent`.

## Setup

1. Copy the Aakash resume-based profile template and tracker:

   ```bash
   copy data\\profile.aakash.example.md data\\profile.md
   copy data\\tracker.example.md data\\tracker.md
   ```

2. Review `data/profile.md` locally. Add contact details, job preferences, salary expectations, and verified metrics. Treat the LinkedIn URL as reference-only; ignore LinkedIn profile content until you explicitly ask to optimize it. Never commit `data/profile.md`, tracker data, or application drafts; these paths are gitignored.

3. In Cursor Agent chat, use plain commands:

   - `Find junior Data Engineer jobs in Pune`
   - `Search for entry-level Data Engineer roles in India`
   - `Tailor my resume for this Data Engineer job` + paste job description
   - `Search for Backend Engineer jobs in Pune`
   - `Prepare applications for my shortlist`

## What it does

| You say | Agent does |
|---------|------------|
| Search jobs | Prioritizes primary target roles, scores fit against verified skills, and updates the local tracker |
| Tailor resume | Creates a role-specific version without inventing experience |
| Apply / batch apply | Prepares tailored resume + cover letter per job in `data/applications/`; you review and submit |
| Update LinkedIn | Skipped until you say your LinkedIn profile is ready |

**Current targeting:** junior/entry-level Data Engineer roles first, then backend/software roles and entry-level AI/GenAI roles. Data-engineering tools such as Spark, Airflow, Kafka, dbt, Snowflake, and Databricks must not be claimed unless you confirm hands-on experience.

**Note:** The agent prepares drafts. You submit applications yourself (login, captcha, final Submit).

## Structure

```
career-agent/
├── SKILL.md              # Main skill (auto-triggers on career keywords)
├── reference/            # LinkedIn, job search, resume, and application workflows
└── data/                 # Local profile & tracker (gitignored)
```

## License

MIT — use and adapt freely.
