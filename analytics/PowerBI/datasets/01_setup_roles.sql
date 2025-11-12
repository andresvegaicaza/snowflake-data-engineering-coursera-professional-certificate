-- Run with a powerful role (e.g., ACCOUNTADMIN). Switch roles as shown.

-- 1) Warehouse for BI (optional but recommended)
use role SYSADMIN;

create warehouse if not exists POWERBI_WH
  warehouse_size = 'XSMALL'
  auto_suspend   = 60
  auto_resume    = true
  initially_suspended = true
  comment = 'Small warehouse dedicated to Power BI queries';

-- 2) Read-only role
use role SECURITYADMIN;

create role if not exists POWERBI_READER
  comment = 'Read-only access to TASTY_BYTES.ANALYTICS for Power BI';

-- 3) Power BI user (set a proper temporary password)
create user if not exists PBI_TASTY_BYTES
  login_name           = 'PBI_TASTY_BYTES'
  display_name         = 'Power BI – Tasty Bytes'
  must_change_password = true
  password             = 'Temp-ChangeMe-123!'   -- CHANGE THIS
  default_role         = POWERBI_READER
  default_warehouse    = POWERBI_WH
  default_namespace    = TASTY_BYTES.ANALYTICS;

-- 4) Attach role to user
grant role POWERBI_READER to user PBI_TASTY_BYTES;

-- 5) Least-privilege grants (USAGE + SELECT on ANALYTICS only)
grant usage on warehouse POWERBI_WH            to role POWERBI_READER;
grant usage on database  TASTY_BYTES           to role POWERBI_READER;
grant usage on schema    TASTY_BYTES.ANALYTICS to role POWERBI_READER;

-- Existing objects
grant select on all tables in schema TASTY_BYTES.ANALYTICS to role POWERBI_READER;
grant select on all views  in schema TASTY_BYTES.ANALYTICS to role POWERBI_READER;

-- Future-proof
grant select on future tables in schema TASTY_BYTES.ANALYTICS to role POWERBI_READER;
grant select on future views  in schema TASTY_BYTES.ANALYTICS to role POWERBI_READER;
