# Career Agent (Cursor Skill)

Personal career assistant for resume-based job search, resume tailoring, cover letters, and application tracking. LinkedIn optimization is available later, but it is optional and should not be used as a source until you decide your profile is up to date.

## Install

In PowerShell, run:

```powershell
git clone https://github.com/aakashpatil14/career-agent.git "$env:USERPROFILE\.cursor\skills\career-agent"
```

If the folder already exists, update it instead:

```powershell
git -C "$env:USERPROFILE\.cursor\skills\career-agent" pull
```

Restart Cursor or reload its skills if the skill does not appear.

## Setup

Open PowerShell in the installed `career-agent` folder and run:

```powershell
Copy-Item data\profile.aakash.example.md data\profile.md
Copy-Item data\tracker.example.md data\tracker.md
```

Then edit `data/profile.md` locally to add your email/phone, salary range, and any verified details you want the agent to use. The profile and tracker are gitignored and should stay private. The profile template is based on your resume; it does not rely on your current LinkedIn content.

## Try it in Cursor Agent

Start with one of these commands:

- `Find 10 suitable entry-level backend or AI/RAG jobs in Pune or remote India`
- `Search for Java Backend Engineer jobs in Pune`
- `Tailor my resume for this job` and paste the job description
- `Prepare a resume, cover letter, and application notes for this role`
- `Review my application tracker and suggest next actions`

The agent should score roles against your skills and preferences, explain why each role fits, and save application drafts under `data/applications/`.

## What it does

| You say | Agent does |
|---------|------------|
| Search jobs | Finds and scores roles against your resume and preferences |
| Tailor resume | Creates a job-specific, evidence-based resume draft |
| Prepare application | Drafts a cover letter and job-specific application notes |
| Review tracker | Summarizes statuses and recommends next actions |
| Update LinkedIn | Optional; use only when you decide to work on LinkedIn |

**Application safety:** The agent prepares drafts. You review each application and submit it yourself. It must not fabricate experience, skills, or metrics, and it must not mass-submit applications.

## Structure

```
career-agent/
├── SKILL.md              # Main skill and workflows
├── reference/            # Job search, resume, LinkedIn, and pipeline guidance
└── data/
    ├── profile.aakash.example.md  # Resume-based profile starter
    ├── profile.md                # Your private local profile (gitignored)
    ├── tracker.example.md        # Tracker template
    └── tracker.md                # Your private local tracker (gitignored)
```

## License

MIT — use and adapt freely.
