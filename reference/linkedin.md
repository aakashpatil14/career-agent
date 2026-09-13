# LinkedIn profile updates

## Inputs

- `data/profile.md` (required)
- Optional: target role, industry, or JD to align messaging
- Optional: current LinkedIn text to improve (paste from user)

## Sections to produce

### Headline (max ~220 chars)

Format: `[Role] | [Differentiator] | [Optional: tech/domain]`

Provide 3 variants: **conservative**, **balanced**, **bold**.

### About (1,300–2,600 chars ideal)

Structure:

1. Hook — who you are + what you solve (2 sentences)
2. Proof — 2–3 achievement bullets with metrics
3. How you work — methods, stack, domains
4. What you're looking for (if job seeking)
5. CTA — connect, email, or portfolio link from profile

### Experience entries

For each role the user requests, output:

- **Title line suggestion** (if title should change for search)
- **3–5 bullets** — action + scope + result
- **Skills to tag** (comma-separated, max 10)

### Featured / banner / skills (on request)

Short copy blocks only; user adds in LinkedIn UI.

## Output template

```markdown
## Ready to paste — Headline
[variant 1]

## Ready to paste — About
[full text]

## Ready to paste — [Company] experience
[bullets]

## Alternatives
[other headlines or shorter About]

## Gaps / questions
- [missing metrics, dates, or permissions]
```

## Rules

- No emoji unless profile.md says the user uses them.
- First person for About; past tense for prior roles, present for current.
- Do not claim open-to-work settings; remind user to toggle in LinkedIn if relevant.
