# Job search and tracking

## Trigger phrases

- "Search for jobs", "find [title] roles", "job hunt in [city]", "what should I apply to"

## Inputs

- `data/profile.md` — target roles, locations, salary band, must-haves / deal-breakers
- `data/tracker.md` — current pipeline
- Optional: list of URLs or companies to evaluate

## Search execution

1. Read target titles, location, remote preference, and must-haves from `profile.md`.
2. If **WebSearch** is available, run 2–3 queries, e.g.:
   - `[title] jobs [location] hiring`
   - `[title] careers [industry] remote`
   - `site:linkedin.com/jobs [title] [location]` (results are public listings only)
3. If WebSearch is unavailable, output **search queries** and **sites to check** (LinkedIn Jobs, company career pages, Indeed, Naukri, etc. per user's region) and ask user to paste 3–5 URLs back.
4. For each promising result, add a **Shortlist** row to tracker with link.
5. If user also said "apply" or "tailor resume", hand off to [pipeline.md](pipeline.md) batch mode for fit ≥7 roles.

## Shortlist evaluation

For each role the user shares, output:

```markdown
### [Company] — [Role]
- **Fit score**: [1–10]
- **Pros**: ...
- **Cons / risks**: ...
- **Missing from profile**: ...
- **Recommended action**: Apply / Skip / Research more
- **Priority**: A / B / C
```

Scoring rubric:

- 9–10: Strong match, apply soon
- 7–8: Good match, tailor resume
- 5–6: Stretch or partial; user decides
- &lt;5: Skip unless strategic reason

## Search strategy (on request)

Produce a 2-week plan:

1. **Target list** — 15–25 companies by tier (dream / solid / safety)
2. **Daily quota** — e.g. 2 tailored applications, 5 networking touches
3. **Channels** — LinkedIn, company sites, referrals (no automated scraping)
4. **Review cadence** — weekly tracker hygiene

## Tracker maintenance

`tracker.md` table columns:

| Date | Company | Role | Status | Link | Next action | Notes |

On "weekly review":

- Count by status
- Stale applications (&gt;14 days, no response) — suggest follow-up template
- Interviews coming up — prep checklist
- Top 3 priorities for the next week

## Follow-up email template (draft only)

Short, professional bump 7–10 days after applying; user personalizes and sends.

## Rules

- Do not scrape job boards or LinkedIn at scale.
- User provides URLs and listings; agent analyzes and drafts.
