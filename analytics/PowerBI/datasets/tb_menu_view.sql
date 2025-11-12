create schema if not exists ANALYTICS;

create or replace view ANALYTICS.DIM_MENU as
select
  m.menu_item_id,
  m.item_name,
  m.brand_name,
  m.category,
  m.price as list_price
from RAW_POS.MENU m;
