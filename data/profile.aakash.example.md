# Aakash Patil — Career Profile (local master source)

> Personalize your local Career Agent with this file. Copy it to `data/profile.md` locally.
> Keep `data/profile.md` private and never commit contact details, job trackers, or application drafts.
> This example intentionally omits phone number, email address, and the exact LinkedIn URL.

## Contact
- **Name**: Aakash Dasharath Patil
- **Location**: Pune, Maharashtra, India
- **LinkedIn URL**: Add your profile URL locally
- **GitHub / Portfolio**: https://github.com/aakashpatil14
- **Email / Phone**: Add locally only

## Target search
- **Target titles**: Software Engineer, Backend Engineer, Python Developer, Java Backend Engineer, AI Engineer (entry-level), GenAI / RAG Engineer
- **Industries**: Developer tools, SaaS, enterprise software, AI/LLM products
- **Locations / remote**: Pune, Bengaluru, Hyderabad, Mumbai, India-wide remote or hybrid
- **Seniority**: Entry-level / early-career; approximately 1 year of professional experience
- **Salary range**: Decide and add locally
- **Must-haves**: Hands-on backend engineering, Python or Java, REST APIs, code quality, collaborative engineering
- **Deal-breakers**: Do not assume; specify locally

## Professional summary
Computer Engineering graduate (2025) and AI QA Engineer at Amdocs, with experience validating enterprise workflows and using AI-assisted tools in functional testing. Builds backend and GenAI systems, including a retrieval-augmented generation (RAG) application with evaluation and observability, and a fuzzy entity-resolution REST service over 500K+ GeoNames records. Core strengths include Python, Java, API design, retrieval, caching, testing, observability, and CI/CD.

## Core skills
- **Languages**: Python, Java, JavaScript (ES6+), TypeScript, C++, SQL
- **Backend**: FastAPI, Spring Boot 3, Node.js, Express, REST APIs
- **AI / GenAI**: LangChain, RAG, vector and hybrid BM25 retrieval, cross-encoder reranking, LLMs, RAGAS
- **Data**: PostgreSQL (pg_trgm), MongoDB, Redis
- **Observability & testing**: Langfuse, Micrometer, Prometheus, Grafana, k6, Testcontainers
- **DevOps**: Docker, GitHub Actions / CI/CD, Render, foundational AWS, Git
- **CS fundamentals**: Data structures and algorithms, object-oriented design, foundational system design

## Experience

### Amdocs — AI QA Engineer
- **Dates**: July 2025 – Present
- **Location**: Pune, India
- Validate end-to-end business workflows on enterprise applications including SAP and PPGIS across distributed systems, using AI tools to assist and automate functional testing.
- Design and execute test cases against functional requirements; integrate AI-assisted tooling into QA workflows to improve coverage and turnaround time.
- Investigate defects and perform root-cause analysis across the software development lifecycle, collaborating with developers to resolve issues before release.
- Triage and document defects with reproducible steps while working in an agile, cross-functional team.

## Education
- **Bachelor of Engineering, Computer Engineering**, RMD Sinhgad School of Engineering, Pune — 2021–2025; CGPA: 8.45

## Projects

### DocsGPT — Production RAG System
- **Stack**: Python, FastAPI, LangChain, PostgreSQL, Redis, Docker, Render
- Built and deployed a RAG application answering questions about FastAPI documentation and GitHub issues with citations.
- Implemented vector retrieval, hybrid BM25 retrieval, cross-encoder reranking, and pluggable embedding/storage backends.
- Evaluated answer quality with RAGAS and traced LLM calls using Langfuse; added Redis caching to reduce inference latency.
- Deployed using Docker and Render across a six-phase ingestion-to-observability roadmap.

### Fuzzy Entity Resolution Service
- **Stack**: Java 21, Spring Boot 3, PostgreSQL (pg_trgm), Redis, Docker, k6, Grafana, Testcontainers
- Built a REST service resolving inconsistent location strings to canonical IDs across 500K+ GeoNames records, with confidence scores and a human-review path for uncertain matches.
- Implemented candidate generation using exact matches, PostgreSQL trigram search with GIN indexes, aliases, and an in-memory token index.
- Scored candidates using Jaro-Winkler, token-set ratio, hierarchy and population priors, with configurable confidence thresholds.
- Added Redis response caching and trigram indexing; validated load behavior with k6.
- Added Prometheus metrics and Grafana dashboards, and integration-tested PostgreSQL and Redis with Testcontainers in GitHub Actions CI.

## Achievements / metrics
1. Entity-resolution coverage: 500K+ GeoNames records.
2. DocsGPT: end-to-end RAG system with citations, evaluation, observability, caching, and deployment.
3. **Add verified metrics locally** for test coverage, latency, throughput, defect resolution, or usage if you have evidence. Do not invent numbers.

## Voice and style
- **Tone**: Direct, technically specific, evidence-based, concise.
- **Avoid**: Generic AI buzzwords, inflated seniority, fabricated metrics, or claims not supported by the resume.
- **Resume rule**: Do not claim Postman, SQL validation, Python/Java test automation at Amdocs, 150+ LeetCode problems, certifications, or additional experience unless Aakash confirms them.

## Current LinkedIn (fill in locally for diff-based updates)
### Headline
Add current headline.
### About
Paste current About section.
