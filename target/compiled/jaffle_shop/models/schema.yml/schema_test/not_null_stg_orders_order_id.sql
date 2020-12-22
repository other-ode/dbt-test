
    
    



select count(*) as validation_errors
from `cool-evening-299014`.`dbt_david`.`stg_orders`
where order_id is null


