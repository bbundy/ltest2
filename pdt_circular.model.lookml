- connection: looker_external

- explore: dt_egg

- view: dt_egg
  derived_table:
    sql: SELECT egg_name FROM ${dt_chicken.SQL_TABLE_NAME} name
    sql_trigger_if: SELECT 42 {{ _dialect._from_nothing }}

- view: dt_chicken
  derived_table:
    sql: SELECT name FROM ${dt_egg.SQL_TABLE_NAME} egg_name
    sql_trigger_if: SELECT 42 {{ _dialect._from_nothing }}

