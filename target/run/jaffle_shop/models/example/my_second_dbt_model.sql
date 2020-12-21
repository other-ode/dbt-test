

  create or replace view `cool-evening-299014`.`dbt_david`.`my_second_dbt_model`
  OPTIONS()
  as -- Use the `ref` function to select from other models

select *
from `cool-evening-299014`.`dbt_david`.`my_first_dbt_model`
where id = 1;

