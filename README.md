<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=000000&height=180&section=header&text=Fredrick%20Nyang'au&fontColor=C6F115&fontSize=44&fontAlignY=40&desc=Junior%20Software%20Engineer%20%C2%B7%20Backend-focused%20%C2%B7%20Full-stack%20capable&descColor=ffffff&descSize=16&descAlignY=62" alt="Fredrick Nyang'au" />

**I build payment and data systems for East African conditions:**
flaky connectivity, webhook failures and cash-heavy reseller networks.

<p>
  <img src="https://img.shields.io/badge/Python-000000?style=for-the-badge&logo=python&logoColor=C6F115" />
  <img src="https://img.shields.io/badge/FastAPI-000000?style=for-the-badge&logo=fastapi&logoColor=C6F115" />
  <img src="https://img.shields.io/badge/PostgreSQL-000000?style=for-the-badge&logo=postgresql&logoColor=C6F115" />
  <img src="https://img.shields.io/badge/M--Pesa%20Daraja-000000?style=for-the-badge&logoColor=C6F115" />
  <img src="https://img.shields.io/badge/React-000000?style=for-the-badge&logo=react&logoColor=C6F115" />
  <img src="https://img.shields.io/badge/TypeScript-000000?style=for-the-badge&logo=typescript&logoColor=C6F115" />
  <img src="https://img.shields.io/badge/Docker-000000?style=for-the-badge&logo=docker&logoColor=C6F115" />
</p>

📍 Nairobi / Nakuru, Kenya (EAT) &nbsp;·&nbsp; 🌍 On-site Nairobi, remote-first, or fully remote
<br/>
🎯 Open to a **Junior Software Engineer** role, internships and freelance backend work

<p>
  <a href="https://fredricknyangau.vercel.app"><img src="https://img.shields.io/badge/Portfolio-C6F115?style=for-the-badge&logo=vercel&logoColor=000000" /></a>
  <a href="https://linkedin.com/in/fredricknyangau"><img src="https://img.shields.io/badge/LinkedIn-000000?style=for-the-badge&logo=linkedin&logoColor=C6F115" /></a>
  <a href="mailto:nyangaufredrick443@gmail.com"><img src="https://img.shields.io/badge/Email-000000?style=for-the-badge&logo=gmail&logoColor=C6F115" /></a>
  <a href="https://dev.to/fredricknyangau"><img src="https://img.shields.io/badge/Dev.to-000000?style=for-the-badge&logo=devdotto&logoColor=C6F115" /></a>
  <a href="https://x.com/dev_fred_"><img src="https://img.shields.io/badge/X-000000?style=for-the-badge&logo=x&logoColor=C6F115" /></a>
</p>

</div>

---

## 👋 About

I'm a junior software engineer with a **backend and payments focus**. My day-to-day stack is **FastAPI + PostgreSQL**, with **M-Pesa Daraja** integrations and **multi-tenant SaaS** architecture. On the front end I work in **React, TypeScript, NestJS and Prisma**, which I'm formalising on the Power Learn Project full-stack track.

I build the way I'd want to inherit a codebase: schema first, real migrations, environment configs, error handling and actual deployments. I use AI coding agents as part of my workflow, but nothing ships until it passes tests, review and my own explanation of why it works.

**Education:** BSc Information Technology, Kabarak University (2025)

---

## 🛠️ Stack

| | |
|---|---|
| **Backend** | Python 3.12 (async, type hints) · FastAPI · Pydantic v2 · asyncpg · Redis · arq · pytest / httpx |
| **Database** | PostgreSQL 16 · raw SQL & CTEs · numbered migrations · row-level security · `CHECK` constraints |
| **Payments** | M-Pesa Daraja (STK Push, C2B webhooks, idempotency keys, retry with backoff) · PayHero · one `PaymentProvider` interface, chosen per tenant |
| **Frontend** | React 19 · Vite · Tailwind · TypeScript · Next.js · Flutter / Dart |
| **Infra** | Docker (multi-stage) · Linux / systemd · Nginx · Render · Railway · Cloudflare Workers · Vercel · Supabase · Neon |
| **Integrations** | MikroTik RouterOS API · WireGuard · Africa's Talking SMS |
| **Learning now** | NestJS · Prisma · CI/CD · unassisted DSA practice · Java / Spring Boot (planned) |

---

## 🚀 Featured Projects

### ⚡ Frixel Connect: multi-tenant ISP billing SaaS
> *Flagship · pre-deployment · deploying it is my top priority*

Billing and access control for ISPs and their resellers. A customer pays by M-Pesa and gets internet access without anyone touching a router.

```text
M-Pesa STK Push ─▶ webhook ─▶ PostgreSQL (idempotent on mpesa_receipt_number)
                                   │
                                   ▼
                          arq background job
                                   │
                     ┌─────────────┴─────────────┐
                     ▼                           ▼
        MikroTik RouterOS API (WireGuard)   Africa's Talking SMS
```

- **FastAPI modular monolith** with clean domain boundaries
- **Tenant isolation enforced at the query, job, RADIUS and pentest layers.** Cross-tenant access returns `404`, never `403`
- **React 19 frontend across four surfaces:** landing, ISP admin, reseller portal and customer captive portal, plus a TOTP-MFA super-admin portal

`Python` `FastAPI` `PostgreSQL` `Redis` `arq` `React 19` `MikroTik` `WireGuard`

---

### 🐔 KukuFiti: broiler-farm management app
> *Flagship · built · next milestone: first pilot farmers*

A mobile app for Kenyan broiler farmers to track flocks, feed and performance.

- **Flutter** app on a **FastAPI + PostgreSQL** modular monolith
- **Raw SQL / CTEs** for Feed Conversion Ratio (FCR) aggregation, under **30 ms** aggregation latency
- **DB-level `CHECK` constraints** so flocks can only hold valid states
- **Numbered SQL migrations**, no ORM

`Flutter` `FastAPI` `PostgreSQL` `Raw SQL`

---

### More work

| Project | What it is | Stack |
|---|---|---|
| **AZ-900 Prep Pad** | Live hackathon quiz app with two-model question validation | React · Vite · Supabase · Cloudflare Workers |
| **ZealSMC-Trading** | Forex backtesting engine with strict train / holdout discipline | Python · Poetry · PostgreSQL |
| **Ordination fundraising ledger** | Contribution ledger with RBAC, RLS and hand-written SQL migrations | Next.js · Supabase · Prisma |
| **Lipa Offline** | Offline-resilient multi-tenant M-Pesa checkout *(exploratory)* | FastAPI · PostgreSQL |

---

## 🧭 How I Build

1. **Start with the database.** A bad schema outlives any framework on top of it.
2. **Design for failure early.** Webhooks fail, networks drop and APIs misbehave, so retries and idempotency are part of the design from day one.
3. **Prefer modular simplicity.** A well-bounded monolith beats a distributed system I'm not ready to operate.
4. **Ship production-ready.** Real migrations, real configs and real deployments, not localhost demos.
5. **Keep it maintainable.** Typed schemas, named queries and numbered migrations that the next engineer can read.
6. **Verify AI output.** Plan → prompt → test → explain. Agent-written code earns its place in the repo.

---

## 📝 Writing & Community

- ✍️ Articles on **modular monolith architecture** on [Dev.to](https://dev.to/fredricknyangau) and CoderLegion (May 2026)
- 🧑‍🏫 **Team Lead, Backend Software Engineers 2026**, a study community helping engineers move from tutorials to production systems
- 🎓 **Power Learn Project Africa** scholar (#1MillionDevs), currently on the full-stack track
- 📚 Author of **The AI Safari**, a prompt-engineering and responsible-AI curriculum built around African market context

---

## 🎯 Currently

- 🚢 Deploying **Frixel Connect** to production
- 🌱 Getting **KukuFiti** in front of its first pilot farmers
- 🧱 Building a production-standard **NestJS + Prisma** service with tests and CI
- 📜 Preparing an **AZ-900** retake
- 🧠 Practising data structures and algorithms without AI, three times a week

---

## 📊 GitHub Stats

<div align="center">

<img height="170" src="https://github-readme-stats.vercel.app/api?username=fredricknyangau&show_icons=true&hide_border=false&bg_color=000000&title_color=C6F115&text_color=FFFFFF&icon_color=C6F115&border_color=2A2A2A" />
<img height="170" src="https://github-readme-stats.vercel.app/api/top-langs/?username=fredricknyangau&layout=compact&bg_color=000000&title_color=C6F115&text_color=FFFFFF&border_color=2A2A2A" />

<img src="https://streak-stats.demolab.com/?user=fredricknyangau&background=000000&ring=C6F115&fire=C6F115&currStreakLabel=C6F115&currStreakNum=FFFFFF&sideNums=FFFFFF&sideLabels=AAAAAA&dates=AAAAAA&stroke=2A2A2A&border=2A2A2A" />

</div>

---

## 🤝 Let's Work Together

I'm looking for a first **Junior Software Engineer** role, internships and graduate-trainee programmes, and freelance **M-Pesa integrations, SaaS backends and MVPs**. I'm most at home in fintech, agritech, ISP/telecom and East African software infrastructure.

| | |
|---|---|
| 📧 **Email** | [nyangaufredrick443@gmail.com](mailto:nyangaufredrick443@gmail.com) |
| 📱 **Phone** | +254 746 730 585 |
| 🌐 **Portfolio** | [fredricknyangau.vercel.app](https://fredricknyangau.vercel.app) |
| 💼 **LinkedIn** | [linkedin.com/in/fredricknyangau](https://linkedin.com/in/fredricknyangau) |

<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=000000&height=100&section=footer" />

*Built in Kenya 🇰🇪 under* **Frixel Labs**

</div>
