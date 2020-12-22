

  create or replace view `cool-evening-299014`.`dbt_david`.`stg_customers`
  OPTIONS()
  as select
        id as customer_id,
        first_name,
        last_name

    from `dbt-tutorial`.jaffle_shop.customers;

