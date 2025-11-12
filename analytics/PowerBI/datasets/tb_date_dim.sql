USE DATABASE TASTY_BYTES;
CREATE SCHEMA IF NOT EXISTS ANALYTICS;
USE SCHEMA ANALYTICS;

-- 1️⃣ Date Dimension View
CREATE OR REPLACE VIEW DIM_DATE AS
WITH base AS (
  SELECT DATEADD(day, SEQ4(), '2023-01-01'::DATE) AS dt
  FROM TABLE(GENERATOR(ROWCOUNT => 2000))
)
SELECT
  dt                           AS date,
  YEAR(dt)                     AS year,
  MONTH(dt)                    AS month,
  TO_CHAR(dt, 'Mon')           AS month_short,
  QUARTER(dt)                  AS quarter,
  WEEKOFYEAR(dt)               AS week,
  DAY(dt)                      AS day;
