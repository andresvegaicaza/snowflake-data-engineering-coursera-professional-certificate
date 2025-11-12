## 🧠 Learning Summary — Snowflake SQL Labs

This series of SQL scripts builds step-by-step knowledge of Snowflake’s core features, from basic setup to advanced data handling.

| # | Topic | Description |
|:-:|:------|:-------------|
| [01](./01_worksheets%20and%20simple%20example.sql) | **Worksheets & Setup** | Basic environment setup — roles, warehouses, and simple data loads from S3. |
| [02](./02_hands_on_worksheets.sql) | **Hands-on Worksheets** | Practice creating databases, schemas, stages, and ingesting data with `COPY INTO`. |
| [03](./03_virtual_warehouses.sql) | **Virtual Warehouses** | Learn scaling, auto-suspend/resume, multi-cluster configuration, and performance tuning. |
| [04](./04_stages_basic_ingestion.sql) | **Stages & Ingestion** | Design end-to-end pipelines: raw → harmonized → analytics layers, using external stages. |
| [05](./05_hands_on_stages_basic_ingestion.sql) | **Hands-on Ingestion** | Apply ingestion concepts to real data and validate loads with `COPY_HISTORY`. |
| [06](./06_databases_schemas.sql) | **Databases & Schemas** | Practice creating, describing, dropping, and restoring objects with `UNDROP`. |
| [07](./07_tables.sql) | **Tables** | Explore table creation, data types, storage metrics, and lifecycle operations. |
| [08](./08_hands_on_tables.sql) | **Hands-on Tables** | Reinforce table concepts with inserts, queries, and quick testing. |
| [09](./09_views.sql) | **Views** | Build regular and materialized views for simplified analytics and metadata control. |
| [10](./10_semistructured_data.sql) | **Semi-Structured Data** | Work with `VARIANT` columns, JSON access, and type casting for nested data. |

---

### 🏁 Key Takeaways
- Understand Snowflake’s **core architecture** and **compute/storage separation**.  
- Build and manage **data ingestion pipelines** using external stages and `COPY INTO`.  
- Configure **warehouses for performance and cost optimization**.  
- Handle **structured and semi-structured data** seamlessly with SQL.  
- Create **views, schemas, and data layers** supporting analytics workflows.  

---

> These exercises together form a solid foundation in Snowflake’s Data Engineering workflow — from raw data ingestion to analytics-ready design.
