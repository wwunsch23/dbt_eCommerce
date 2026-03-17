# 🛒 dbt eCommerce Analytics Project

## 📌 Overview
This project demonstrates an end-to-end analytics engineering workflow using **dbt (data build tool)** to transform raw eCommerce data into a clean, scalable, and analytics-ready data model.

The goal is to simulate a real-world data pipeline where raw transactional data is ingested, transformed, validated, and structured into business-friendly datasets that support reporting and decision-making.

---

## 🏗️ Architecture & Approach

This project follows modern **ELT (Extract, Load, Transform)** principles:

1. **Raw Data Layer** – Source eCommerce data loaded into the warehouse  
2. **Staging Layer** – Cleaned and standardized source data  
3. **Intermediate Layer** – Business logic and transformations applied  
4. **Mart Layer** – Final fact and dimension tables for analytics  

The transformations are built and orchestrated using **dbt**, enabling modular, testable, and maintainable pipelines.

---

## 📊 Data Model

The project implements a **dimensional data model** designed for analytics use cases.

### Core Models:
- **Fact Tables**
  - `fct_orders` – Order-level transactional data  
- **Dimension Tables**
  - `dim_customers` – Customer attributes and segmentation
  - `dim_products` – Product-level details
  - (Add others if applicable)

### Example Use Cases:
- Sales performance analysis  
- Customer behavior and retention  
- Product performance tracking  

---

## ⚙️ Tech Stack

- **dbt**
- **SQL**
- **Jinja (dbt templating)**
- Data warehouse: **BigQuery**

---

## 🧪 Data Quality & Testing

Data quality is enforced using dbt’s built-in testing framework:

- **Schema tests**
  - `not_null`
  - `unique`
  - `relationships`

These tests ensure:
- Referential integrity across tables  
- No duplicate primary keys  
- Completeness of critical fields  

---

## 📁 Project Structure

```
dbt_eCommerce/
│
├── models/
│ ├── staging/
│ ├── intermediate/
│ └── marts/
│
├── tests/
├── macros/
├── snapshots/ (if applicable)
├── seeds/ (if applicable)
│
├── dbt_project.yml
└── README.md
```

---

## 📈 Key Features

- Modular data transformations using dbt
- Layered modeling approach (staging → marts)
- Reusable SQL with Jinja templating
- Built-in data quality testing
- Analytics-ready schema design

---

## 🎯 Project Purpose

This project was built to:
 - Demonstrate analytics engineering best practices
 - Showcase proficiency in dbt and SQL
 - Model real-world business metrics and KPIs
 - Create scalable data models for BI and reporting

---

## 🔮 Future Enhancements

- Add incremental models for performance optimization
- Implement CI/CD (GitHub Actions) for automated testing
- Integrate orchestration (e.g., Airflow or dbt Cloud jobs)
- Expand business logic (customer LTV, cohort analysis)
- Add dashboards (e.g., Tableau, Power BI, Looker)