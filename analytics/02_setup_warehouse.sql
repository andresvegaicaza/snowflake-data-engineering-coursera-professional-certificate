----------------------------------------------------------------------
-- 02_warehouse.sql  — create analytics warehouse and grant usage
-- Create as: SYSADMIN   |  Grants as: SECURITYADMIN
----------------------------------------------------------------------

-- Create WH
USE ROLE SYSADMIN;

CREATE WAREHOUSE IF NOT EXISTS ANALYTICS_WH
  WAREHOUSE_SIZE = 'XSMALL'
  AUTO_SUSPEND   = 60
  AUTO_RESUME    = TRUE
  INITIALLY_SUSPENDED = TRUE;

-- Grant WH usage to project roles
USE ROLE SECURITYADMIN;

GRANT USAGE ON WAREHOUSE ANALYTICS_WH TO ROLE ANALYTICS_DEV_ROLE;
GRANT USAGE ON WAREHOUSE ANALYTICS_WH TO ROLE POWERBI_READ_ROLE;
