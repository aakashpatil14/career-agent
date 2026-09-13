# Resume / CV tailoring

## Inputs

- `data/profile.md`
- Job description (paste or URL summary from user)
- Optional: current resume text or file path
- Optional: page limit (default 1 page for <10 years; 2 pages if senior)

## Process

1. **Extract JD signals** — required skills, nice-to-haves, seniority, domain.
2. **Map profile → JD** — table of match / partial / gap.
3. **Tailor** — reorder bullets, swap keywords, drop irrelevant lines.
4. **Gap strategy** — honest framing for partial matches; never invent experience.

## Output structure

```markdown
## Match summary
| JD requirement | Your evidence | Strength |
|----------------|---------------|----------|

## Tailored resume (markdown)
### [Name]
[contact block from profile]

### Summary
[3–4 lines targeted to role]

### Experience
#### [Company] — [Title] | [dates]
- [bullet]
...

### Skills
[grouped: core / tools / domain]

### Education & certifications
[from profile only]

## Changes from base resume
- [what moved, added, or cut]

## Gaps / questions
- [items user should clarify or add metrics for]
```

## Formatting rules

- Bullets start with strong verbs; one line preferred, two max.
- Lead with impact: metric → action → context.
- ATS-friendly: simple headings, no tables in the resume body unless user asks.
- If user provides `.docx`/PDF, output markdown they can paste; suggest export path if they use a template repo.

## File output (optional)

If user asks to save: write to `data/resumes/YYYY-MM-DD-company-role.md` under the skill folder.
