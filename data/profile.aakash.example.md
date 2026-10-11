# Aakash Patil — Career Profile (local master source)

> Personalize your local Career Agent with this file. Copy it to `data/profile.md` locally.
> Keep `data/profile.md` private and never commit contact details, job trackers, or application drafts.
> This example intentionally omits phone number and email address. LinkedIn is not a source of truth for now; use the resume-based details below.

## Contact
- **Name**: Aakash Dasharath Patil
- **Location**: Pune, Maharashtra, India
- **LinkedIn URL**: https://www.linkedin.com/in/aakash-patil-676595272 (reference only; profile content not verified)
- **GitHub / Portfolio**: https://github.com/aakashpatil14
- **Email / Phone**: Add locally only

## Target search
- **Target titles (equal priority)**: Data Engineer, Junior / Entry-Level Data Engineer, Associate Data Engineer, Backend Engineer, Software Engineer, Python Developer, Java Backend Engineer, AI / GenAI Engineer (entry-level), RAG Engineer, SQL Developer, ETL Developer, Analytics Engineer, Data Platform Engineer
- **Targeting rule**: Consider all listed role families equally; rank individual openings by skills match, seniority, location, responsibilities, and growth potential rather than preferring one title family.
- **Industries**: Data platforms, SaaS, enterprise software, developer tools, AI/LLM products
- **Locations / remote**: Pune, Bengaluru, Hyderabad, Mumbai, India-wide remote or hybrid
- **Seniority**: Entry-level / early-career; approximately 1 year of professional experience
- **Salary range**: Decide and add locally
- **Must-haves**: Junior-friendly requirements; SQL and Python or Java; data processing, databases, backend/API work, data quality, testing, or pipeline-adjacent responsibilities
- **Deal-breakers**: Do not assume; specify locally
- **Data-engineering guardrail**: Do not claim Spark, PySpark, Hadoop, Kafka, Airflow, dbt, Snowflake, Databricks, cloud data platforms, or production ETL experience unless Aakash confirms hands-on experience.

## Professional summary
Computer Engineering graduate (2025) and AI QA Engineer at Amdocs, with experience validating enterprise workflows and using AI-assisted tools in functional testing. Builds backend and data-intensive systems, including a RAG application with ingestion, retrieval, evaluation and observability, and a fuzzy entity-resolution REST service over 500K+ GeoNames records using PostgreSQL indexing and Redis caching. Relevant foundations for junior data engineering include Python, SQL, relational databases, data retrieval, indexing, testing, monitoring, and CI/CD; dedicated data-platform tools should be listed only after verified hands-on use.

## Core skills
- **Languages**: Python, Java, JavaScript (ES6+), TypeScript, C++, SQL
- **Databases & data access**: PostgreSQL (pg_trgm), MongoDB, Redis, SQL queries, indexing, caching, candidate retrieval, entity resolution
- **Data engineering foundations**: Data ingestion/retrieval workflows, data normalization and matching, relational data modeling concepts, data quality through test cases and validation, performance/load testing, monitoring
- **Backend**: FastAPI, Spring Boot 3, Node.js, Express, REST APIs
- **AI / GenAI**: LangChain, RAG, vector and hybrid BM25 retrieval, cross-encoder reranking, LLMs, RAGAS
- **Observability & testing**: Langfuse, Micrometer, Prometheus, Grafana, k6, Testcontainers
- **DevOps**: Docker, GitHub Actions / CI/CD, Render, foundational AWS, Git
- **CS fundamentals**: Data structures and algorithms, object-oriented design, foundational system design
- **Verify before adding**: Apache Spark / PySpark, Airflow, Kafka, dbt, Hadoop, Snowflake, Databricks, AWS Glue, Redshift, BigQuery, Azure Data Factory

## Experience

### Amdocs — AI QA Engineer
- **Dates**: July 2025 – Present
- **Location**: Pune, India
- Validate end-to-end business workflows on enterprise applications including SAP and PPGIS across distributed systems, using AI tools to assist and automate functional testing.
- Design and execute test cases against functional requirements; integrate AI-assisted tooling into QA workflows to improve coverage and turnaround time.
- Investigate defects and perform root-cause analysis across the software development lifecycle, collaborating with developers to resolve issues before release.
- Triage and document defects with reproducible steps while working in an agile, cross-functional team.
- **Resume positioning**: Emphasize data correctness, workflow validation, defect analysis, and systems thinking when relevant to a job description; do not relabel this role as data engineering or claim unverified SQL/ETL automation.

## Education
- **Bachelor of Engineering, Computer Engineering**, RMD Sinhgad School of Engineering, Pune — 2021–2025; CGPA: 8.45

## Projects

### DocsGPT — Production RAG System
- **Stack**: Python, FastAPI, LangChain, PostgreSQL, Redis, Docker, Render
- Built and deployed a RAG application answering questions about FastAPI documentation and GitHub issues with citations.
- Implemented a document ingestion/retrieval workflow, vector retrieval, hybrid BM25 retrieval, cross-encoder reranking, and pluggable embedding/storage backends.
- Evaluated answer quality with RAGAS and traced LLM calls using Langfuse; added Redis caching to reduce inference latency.
- Deployed using Docker and Render across a six-phase ingestion-to-observability roadmap.
- **Data-engineering angle**: Describe the ingestion and retrieval workflow, storage choices, retrieval quality evaluation, caching, and observability accurately; do not call it a large-scale production ETL platform.

### Fuzzy Entity Resolution Service
- **Stack**: Java 21, Spring Boot 3, PostgreSQL (pg_trgm), Redis, Docker, k6, Grafana, Testcontainers
- Built a REST service resolving inconsistent location strings to canonical IDs across 500K+ GeoNames records, with confidence scores and a human-review path for uncertain matches.
- Implemented candidate generation using exact matches, PostgreSQL trigram search with GIN indexes, aliases, and an in-memory token index.
- Scored candidates using Jaro-Winkler, token-set ratio, hierarchy and population priors, with configurable confidence thresholds.
- Added Redis response caching and trigram indexing; validated load behavior with k6.
- Added Prometheus metrics and Grafana dashboards, and integration-tested PostgreSQL and Redis with Testcontainers in GitHub Actions CI.
- **Data-engineering angle**: Highlight data matching/normalization, database indexing, handling inconsistent records, confidence-based review, and scale of the reference dataset.

## Achievements / metrics
1. Entity-resolution coverage: 500K+ GeoNames records.
2. DocsGPT: end-to-end RAG system with citations, evaluation, observability, caching, and deployment.
3. **Add verified metrics locally** for test coverage, latency, throughput, defect resolution, or usage if you have evidence. Do not invent numbers.

## Voice and style
- **Tone**: Direct, technically specific, evidence-based, concise.
- **Avoid**: Generic AI buzzwords, inflated seniority, fabricated metrics, or claims not supported by the resume.
- **Resume rule**: Do not claim Postman, SQL validation, Python/Java test automation at Amdocs, 150+ LeetCode problems, certifications, or additional experience unless Aakash confirms them.
- **Role-tailoring rule**: Tailor toward any relevant role family using verified experience and projects. For data roles, highlight Python/SQL/database, ingestion/retrieval, indexing, validation, testing, and monitoring evidence. Flag missing mandatory tools rather than silently adding them.

## Current LinkedIn (ignore until the user updates it)
Do not read, summarize, or use current LinkedIn content for resume or job applications. Revisit only when Aakash explicitly asks to optimize LinkedIn.
