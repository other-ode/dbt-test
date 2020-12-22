
    
    



select count(*) as validation_errors
from (

    select
        customer_id

    from `cool-evening-299014`.`dbt_david`.`customers`
    where customer_id is not null
    group by customer_id
    having count(*) > 1

) validation_errors


