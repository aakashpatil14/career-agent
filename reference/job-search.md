# Job search and tracking

## Trigger phrases

- "Search for jobs", "find [title] roles", "job hunt in [city]", "what should I apply to"

## Inputs

- `data/profile.md` — target roles, location, remote preference, salary band, must-haves / deal-breakers
- `data/tracker.md` — current pipeline
- Optional: list of URLs or companies to evaluate

## Search execution

1. Read target titles, location, seniority, and must-haves from `profile.md`.
2. Search all target role families with equal priority: Data Engineer and adjacent data roles; Software Engineer/SDE and Backend Engineer; Python Developer and Java Developer; AI Engineer, GenAI Engineer, and RAG Engineer; plus other suitable early-career technical roles. Rank individual openings by verified skills match, seniority, location, responsibilities, and growth potential—not by title family.
3. If **WebSearch** is available, run 2–3 queries per role family, e.g.:
   - `junior data engineer Python SQL jobs [location]`
   - `entry level data engineer PostgreSQL Python [location]`
   - `associate data engineer graduate hiring India remote`
   - `[title] jobs [location] hiring`
   - `[title] careers [industry] remote`
   - `site:linkedin.com/jobs [title] [location]` (public listings only; do not use LinkedIn profile content as a source)
4. Include adjacent titles only where responsibilities fit: ETL Developer, SQL Developer, Data Integration Engineer, Analytics Engineer, Backend Engineer. Mark Spark/Airflow/Kafka/dbt/cloud warehouse requirements as skill gaps unless the profile is updated with verified experience.
5. If WebSearch is unavailable, output **search queries** and **sites to check** (company career pages, LinkedIn Jobs, Indeed, Naukri, etc. per user's region) and ask the user to paste 3–5 URLs back.
6. For each promising result, add a **Shortlist** row to tracker with link.
7. If user also said "apply" or "tailor resume", hand off to [pipeline.md](pipeline.md) batch mode for fit ≥7 roles.

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

Score roles against actual responsibilities and required skills, not title alone. Give extra credit for SQL, Python, PostgreSQL, data ingestion/retrieval, data quality, data matching, testing, observability, and junior-friendly requirements. Treat required experience with unverified tools (e.g. Spark, Airflow, Kafka, dbt, Snowflake, Databricks) as a real gap.

Scoring rubric:

- 9–10: Strong match, apply soon
- 7–8: Good match, tailor resume
- 5–6: Stretch or partial; user decides
- <5: Skip unless strategic reason

## Search strategy (on request)

Produce a 2-week plan:

1. **Target list** — 15–25 companies by tier (dream / solid / safety)
2. **Daily quota** — e.g. 2 tailored applications, 5 networking touches
3. **Channels** — LinkedIn Jobs, company sites, referrals, and region-relevant job boards (no automated scraping)
4. **Review cadence** — weekly tracker hygiene

## Tracker maintenance

`tracker.md` table columns:

| Date | Company | Role | Status | Link | Next action | Notes |

On "weekly review":

- Count by status
- Stale applications (>14 days, no response) — suggest follow-up template
- Interviews coming up — prep checklist
- Top 3 priorities for the next week

## Follow-up email template (draft only)

Short, professional bump 7–10 days after applying; user personalizes and sends.

## Rules

- Do not scrape job boards or LinkedIn at scale.
- Do not infer or fabricate skills, certifications, experience, salary, or impact.
- User provides URLs and listings; agent analyzes and drafts.
