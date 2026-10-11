# Job search and tracking

## Trigger phrases

- "Search for jobs", "find [title] roles", "job hunt in [city]", "what should I apply to"

## Inputs

- `data/profile.md` — target roles, locations, salary band, must-haves / deal-breakers
- `data/tracker.md` — current pipeline
- Optional: list of URLs or companies to evaluate

## Role-family coverage and ranking (required)

- Search all suitable early-career role families with **equal initial priority**. Do not automatically favor Data Engineer, software/backend, Python/Java, AI/GenAI/RAG, or any other family.
- Cover role families represented by the profile and resume, including:
  - **Data and data platform**: Data Engineer, Junior/Associate Data Engineer, ETL Developer, SQL Developer, Analytics Engineer, Data Platform Engineer.
  - **Software and backend**: Software Engineer / SDE, Backend Engineer.
  - **Language-focused**: Python Developer, Java Developer / Java Backend Engineer.
  - **AI and GenAI**: AI Engineer, GenAI Engineer, RAG Engineer.
  - **Adjacent technical roles**: other entry-level roles with a credible match to the verified profile.
- These are search-title examples, not claims that Aakash has every tool or skill commonly requested by those roles. Do not invent experience with technologies not listed in the profile.
- Rank **individual openings across all role families together**, using the same criteria: verified skills match, seniority/experience requirements, location/remote fit, actual responsibilities, and growth potential. Explain meaningful gaps and do not boost or penalize a role solely because of its family.
- Search breadth should be balanced: use queries across the role families rather than spending the entire search on one title. Adapt the exact query count to the search tool available and the user's scope.

## Search execution

1. Read target roles, location, remote preference, and must-haves from `profile.md`.
2. If the user asks broadly for suitable jobs, search across the role families above. If the user names a specific title or family, respect that narrower request.
3. If **WebSearch** is available, run queries across multiple role families, for example:
   - `Data Engineer OR ETL Developer OR Analytics Engineer jobs [location]`
   - `Software Engineer OR Backend Engineer OR Java Developer jobs [location]`
   - `Python Developer OR AI Engineer OR GenAI OR RAG Engineer jobs [location]`
   - `entry-level technical jobs [location] remote India`
   - `site:linkedin.com/jobs [role family] [location]` (public listings only)
4. If WebSearch is unavailable, output balanced search queries and sites to check (LinkedIn Jobs, company career pages, Indeed, Naukri, etc. per user's region) and ask the user to paste 3–5 URLs back.
5. For each promising result, add a **Shortlist** row to tracker with link.
6. If the user also said "apply" or "tailor resume", hand off to [pipeline.md](pipeline.md) batch mode for fit ≥7 roles.

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

Score each opening individually, regardless of role family. The role-family label itself must not affect its score.

Scoring rubric:

- 9–10: Strong match, apply soon
- 7–8: Good match, tailor resume
- 5–6: Stretch or partial; user decides
- <5: Skip unless strategic reason

Use the same rubric across all role families. Where there are more results than can be evaluated in one pass, state the coverage limits and continue with the remaining families instead of silently excluding them.

## Search strategy (on request)

Produce a 2-week plan:

1. **Target list** — 15–25 companies by tier (dream / solid / safety)
2. **Daily quota** — e.g. 2 tailored applications, 5 networking touches
3. **Channels** — LinkedIn, company sites, referrals (no automated scraping)
4. **Review cadence** — weekly tracker hygiene

## Tracker maintenance

`tracker.md` table columns:

| Date | Company | Role | Status | Link | Next action | Notes |
|---|---|---|---|---|---|---|

On "weekly review":

- Count by status
- Stale applications (>14 days, no response) — suggest follow-up template
- Interviews coming up — prep checklist
- Top 3 priorities for the next week

## Follow-up email template (draft only)

Short, professional bump 7–10 days after applying; user personalizes and sends.

## Rules

- Do not scrape job boards or LinkedIn at scale.
- User provides URLs and listings; agent analyzes and drafts.
- Use the resume/profile as the source of truth; ignore LinkedIn content unless the user asks to use it.
- Never fabricate skills, tools, experience, certifications, achievements, or metrics.
