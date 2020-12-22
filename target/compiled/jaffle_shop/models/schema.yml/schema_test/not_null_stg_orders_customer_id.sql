
    
    



select count(*) as validation_errors
from `cool-evening-299014`.`dbt_david`.`stg_orders`
where customer_id is null


