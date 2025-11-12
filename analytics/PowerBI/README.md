# 🍰 Power BI – Snowflake Analytics Project

This section contains all assets for the **Tasty Bytes – Snowflake + Power BI integration**.

It includes:
- SQL view definitions for curated datasets
- Connection instructions for Power BI Desktop
- Recommended relationships and measures for the report

---

## ⚙️ Connection Setup

| Parameter | Value |
|------------|--------|
| **Server** | `<your_account>.<region>.snowflakecomputing.com` |
| **Warehouse** | `ANALYTICS_WH` |
| **Database** | `TASTY_BYTES_CLONE` |
| **Schema** | `ANALYTICS` |
| **Role** | `POWERBI_READ_ROLE` |
| **Authentication** | Username & Password (use `andres_bi` or equivalent read-only user) |

---

## 🧠 Datasets Available

| View | Description |
|------|--------------|
| `DIM_DATE` | Calendar dimension for time-series analysis |
| `DIM_MENU` | Menu and product attributes (brand, category, pricing) |
| `FCT_ORDERS` | Transaction-level sales fact table (header + detail join) |

These views are optimized for reporting and visualization inside Power BI, sourced from the Snowflake sample database **TASTY_BYTES**.

---

## 🧩 Power BI Model Recommendations

### Relationships
| From | Column | → | To | Column | Type |
|------|---------|---|----|--------|------|
| `DIM_DATE` | `date` | → | `FCT_ORDERS` | `order_date` | Many-to-One |
| `DIM_MENU` | `menu_item_id` | → | `FCT_ORDERS` | `menu_item_id` | Many-to-One |

### Suggested DAX Measures
```DAX
Total Sales := SUM(FCT_ORDERS[line_amount])
Total Qty := SUM(FCT_ORDERS[qty])
Avg Ticket := DIVIDE([Total Sales], DISTINCTCOUNT(FCT_ORDERS[order_id]))
Sales LY := CALCULATE([Total Sales], DATEADD(DIM_DATE[date], -1, YEAR))
Sales YoY % := DIVIDE([Total Sales] - [Sales LY], [Sales LY])
Brand Mix % := DIVIDE([Total Sales], CALCULATE([Total Sales], ALL(DIM_MENU[brand_name])))
