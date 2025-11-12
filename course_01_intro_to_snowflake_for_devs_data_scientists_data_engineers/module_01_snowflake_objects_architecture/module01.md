# 🧊 Snowflake SQL Labs — Summary & Learnings

This section summarizes the progression of SQL labs from the **Snowflake Data Engineering Professional Certificate**.  
Each file builds upon the previous, moving from setup to advanced data handling.

---

## 01 – Worksheets & Simple Example
**Focus:** Basic setup and data ingestion.  
**Learned:**  
- Define roles, warehouses, and schemas.  
- Create tables and stages referencing S3 storage.  
- Load CSV data using `COPY INTO`.  
- Run exploratory queries (counts, grouping, ordering).  
📄 `01_worksheets and simple example.sql`:contentReference[oaicite:0]{index=0}

---

## 02 – Hands-on Worksheets
**Focus:** Hands-on replication of setup.  
**Learned:**  
- Reinforce creation of databases, schemas, and stages.  
- Use external S3 stages for structured data loads.  
📄 `02_hands_on_worksheets.sql`:contentReference[oaicite:1]{index=1}

---

## 03 – Virtual Warehouses
**Focus:** Compute scaling and management.  
**Learned:**  
- Create, resize, suspend, and drop warehouses.  
- Optimize cost/performance using multi-cluster and auto-suspend.  
- Analyze profits using queries on loaded data.  
📄 `03_virtual_warehouses.sql`:contentReference[oaicite:2]{index=2}

---

## 04 – Stages & Basic Ingestion
**Focus:** End-to-end data ingestion pipeline.  
**Learned:**  
- Create multiple schemas for raw, harmonized, and analytics zones.  
- Define file formats and external stages.  
- Build and populate multiple tables (`country`, `franchise`, `location`, `menu`, etc.).  
- Create analytical views (`orders_v`, `customer_loyalty_metrics_v`).  
📄 `04_stages_basic_ingestion.sql`:contentReference[oaicite:3]{index=3}

---

## 05 – Hands-on Stages & Basic Ingestion
**Focus:** Practical data zone implementation.  
**Learned:**  
- Repeat ingestion workflow hands-on.  
- Create harmonized and analytics views with joins across schemas.  
- Use `COPY INTO` for multi-table loading from S3.  
📄 `05_hands_on_stages_basic_ingestion.sql`:contentReference[oaicite:4]{index=4}

---

## 06 – Databases & Schemas
**Focus:** Database object management.  
**Learned:**  
- Create, drop, and restore (`UNDROP`) databases and schemas.  
- Query metadata via `INFORMATION_SCHEMA` and `DESCRIBE`.  
📄 `06_databases_schemas.sql`:contentReference[oaicite:5]{index=5}

---

## 07 – Tables
**Focus:** Table creation and metadata.  
**Learned:**  
- Define tables with multiple data types (`VARIANT`, `GEOGRAPHY`, etc.).  
- Insert, drop, undrop, and inspect metadata.  
- Query `ACCOUNT_USAGE` for storage insights.  
📄 `07_tables.sql`:contentReference[oaicite:6]{index=6}

---

## 08 – Hands-on Tables
**Focus:** Reinforce DDL/DML practice.  
**Learned:**  
- Create DB/schema and build multi-type table.  
- Insert and query sample rows.  
📄 `08_hands_on_tables.sql`:contentReference[oaicite:7]{index=7}

---

## 09 – Views
**Focus:** Logical layer and reusability.  
**Learned:**  
- Build standard and materialized views.  
- Query and describe views.  
- Understand view lifecycle: create, drop, undrop, and describe.  
📄 `09_views.sql`:contentReference[oaicite:8]{index=8}

---

## 10 – Semi-Structured Data
**Focus:** JSON and VARIANT usage.  
**Learned:**  
- Handle semi-structured data with `VARIANT` columns.  
- Use `TYPEOF`, colon (`:`), and bracket (`[]`) syntax for JSON access.  
- Perform numeric operations on `VARIANT` types.  
📄 `10_semistructured_data.sql`:contentReference[oaicite:9]{index=9}

---

## 🎓 Overall Learnings
- **Data Architecture:** Understand layered design — *raw → harmonized → analytics*.  
- **Data Loading:** Use `COPY INTO` from external/internal stages with file formats.  
- **Compute Scaling:** Manage cost-performance tradeoffs using warehouses.  
- **Governance:** Leverage roles, metadata, and schema design for clean structure.  
- **Data Modeling:** Apply relational joins, views, and semi-structured integration.  
- **Resilience:** Practice recovery (`UNDROP`) and incremental zone building.

---

*This collection represents the foundation of modern data engineering with Snowflake — from setup to advanced transformations.*
