----------------------------------------------------------------------
-- View: DIM_MENU
-- Purpose: Menu dimension containing product, brand, and category info
----------------------------------------------------------------------

USE ROLE SYSADMIN;
USE DATABASE TASTY_BYTES_CLONE;
USE SCHEMA ANALYTICS;

CREATE OR REPLACE VIEW DIM_MENU AS
SELECT
  m.MENU_ITEM_ID,
  m.ITEM_NAME,
  m.BRAND_NAME,
  m.CATEGORY,
  m.PRICE AS LIST_PRICE
FROM TASTY_BYTES_CLONE.RAW_POS.MENU AS m;
