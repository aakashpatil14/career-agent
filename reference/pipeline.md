# Application pipeline (single + batch)

## Single job pipeline

Triggered by: "apply to [company]", pasted JD, or job URL.

### Steps

1. Parse JD — title, company, requirements, link
2. Score fit (1–10) vs `profile.md`; if &lt;5, warn user before spending effort
3. Write tailored `resume.md` and `cover-letter.md`
4. Draft answers for common fields (why company, why role, authorization — from profile only)
5. Save to:
   ```
   data/applications/YYYY-MM-DD-{company-slug}-{role-slug}/
     resume.md
     cover-letter.md
     jd.md          # pasted JD for reference
     checklist.md   # portal-specific steps
   ```
6. Update `tracker.md` — status **Ready to apply**
7. Output **Ready to paste** summary + **Your action** (open link, upload resume, paste letter)

### checklist.md template

```markdown
# Apply: [Company] — [Role]

- [ ] Open: [URL]
- [ ] Upload: data/applications/.../resume.md (export PDF if needed)
- [ ] Paste cover letter
- [ ] Answer: [list custom questions with drafted answers below]
- [ ] Review all fields
- [ ] Submit (user only)
- [ ] Tell agent "mark [company] applied" to update tracker
```

---

## Batch mode ("apply to all" / "process shortlist")

### Input

- All tracker rows with status **Shortlist** or user-provided list of URLs/JDs
- Optional: max jobs per run (default **5** unless user says "all" — then cap at **10** per run and offer continuation)

### Steps

1. List jobs to process; confirm count in output header
2. For each job, run single pipeline (steps 1–6)
3. Produce **batch summary table**:

| # | Company | Role | Fit | Folder | Status |
|---|---------|------|-----|--------|--------|

4. Produce **master checklist** — ordered list of apply steps across all jobs
5. Do **not** mark **Applied** until user confirms each submission

### After batch

Tell user:

> Drafts saved for N jobs. Open each folder, submit on the job site, then say **"mark [company] applied"** or **"mark batch applied: A, B, C"**.

---

## LinkedIn-only pipeline

User: "update LinkedIn" (no job context)

1. Read `profile.md` + any pasted current LinkedIn text
2. Output headline, About, experience bullets — **Ready to paste**
3. Optional: align wording with top 3 **Shortlist** roles in tracker if present
4. **Your action**: LinkedIn → Me → edit sections → paste

No browser automation unless user explicitly asks and is at the keyboard.

---

## Search → apply pipeline

User: "search for [role] jobs and apply"

1. **Search** ([job-search.md](job-search.md)) — WebSearch + user criteria from profile
2. Add top matches to tracker as **Shortlist** (with links)
3. Ask once if needed: "Found N roles. Process top 5 for applications? (yes / pick numbers / skip)"
4. If yes → **batch mode** on selected rows
5. If user said "apply to all" without review → still show shortlist table first, then batch only for rows they confirm or all **Shortlist** with fit ≥7

---

## Semi-auto submit (optional, one job)

Only when user says "submit this one for me" and browser tools are available.

1. `browser_navigate` to application URL
2. `browser_lock` → fill fields from saved drafts
3. **Stop before Submit** — screenshot or snapshot + "Confirm submit? (yes/no)"
4. On yes only → click submit; update tracker to **Applied**
5. `browser_unlock`

If login/captcha/2FA → stop and hand off to user.

---

## Status flow in tracker

```
Shortlist → Ready to apply → Applied → Screen → Interview → Offer / Rejected
```

Agent sets **Ready to apply** after drafts. User (or confirmed semi-auto) sets **Applied**.
