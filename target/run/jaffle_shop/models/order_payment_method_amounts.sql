

  create or replace view `cool-evening-299014`.`dbt_david`.`order_payment_method_amounts`
  OPTIONS()
  as with order_payment_method_amounts as (
    select
        order_id,
        
        sum(case when payment_method = 'bank_transfer' then amount end) as bank_transfer_amount,
        
        sum(case when payment_method = 'credit_card' then amount end) as credit_card_amount,
        
        sum(case when payment_method = 'gift_card' then amount end) as gift_card_amount,
        
        sum(amount) as total_amount
        from `cool-evening-299014`.`dbt_david`.`raw_payments`
     group by 1

),

final as (

    select * from order_payment_method_amounts

)

select * from final;

