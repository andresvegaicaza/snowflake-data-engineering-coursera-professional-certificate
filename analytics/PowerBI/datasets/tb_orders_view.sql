----------------------------------------------------------------------
-- View: FCT_ORDERS
-- Purpose: Fact table joining order headers and details for sales analysis
----------------------------------------------------------------------

USE ROLE SYSADMIN;
USE DATABASE TASTY_BYTES_CLONE;
USE SCHEMA ANALYTICS;

CREATE OR REPLACE VIEW FCT_ORDERS AS
SELECT
  oh.ORDER_ID,
  CAST(oh.ORDER_TS AS DATE)      AS ORDER_DATE,
  DATE_TRUNC('day', oh.ORDER_TS) AS ORDER_DATETIME,
  od.MENU_ITEM_ID,
  od.QTY,
  od.EXT_PRICE                   AS LINE_AMOUNT,
  oh.LOCATION_ID,
  oh.TRUCK_ID,
  oh.CURRENCY
FROM TASTY_BYTES_CLONE.RAW_POS.ORDER_HEADER AS oh
JOIN TASTY_BYTES_CLONE.RAW_POS.ORDER_DETAIL  AS od
  ON oh.ORDER_ID = od.ORDER_ID;
