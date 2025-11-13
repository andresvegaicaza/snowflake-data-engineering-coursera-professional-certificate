----------------------------------------------------------------------
-- 01_roles.sql  — create project roles and hierarchy
-- Run as: SECURITYADMIN
----------------------------------------------------------------------

USE ROLE SECURITYADMIN;

-- Project roles
CREATE ROLE IF NOT EXISTS ANALYTICS_DEV_ROLE;
CREATE ROLE IF NOT EXISTS POWERBI_READ_ROLE;

-- Dev > Read (dev inherits read)
GRANT ROLE POWERBI_READ_ROLE TO ROLE ANALYTICS_DEV_ROLE;

-- Ensure platform visibility via SYSADMIN
GRANT ROLE ANALYTICS_DEV_ROLE TO ROLE SYSADMIN;
GRANT ROLE POWERBI_READ_ROLE  TO ROLE SYSADMIN;


CREATE USER IF NOT EXISTS powerbi_dev
  PASSWORD = 'yourpassword'
  LOGIN_NAME = 'powerbi_dev'
  DISPLAY_NAME = 'Power BI Developer'
  EMAIL = 'powerbidev@example.com'
  DEFAULT_ROLE = ANALYTICS_DEV_ROLE
  DEFAULT_WAREHOUSE = ANALYTICS_WH
  MUST_CHANGE_PASSWORD = TRUE;


GRANT ROLE ANALYTICS_DEV_ROLE TO USER powerbi_dev;

