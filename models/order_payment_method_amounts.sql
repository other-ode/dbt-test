with order_payment_method_amounts as (
    select
        order_id,
        {% for payment_method in ["bank_transfer", "credit_card", "gift_card"] %}
        sum(case when payment_method = '{{payment_method}}' then amount end) as {{payment_method}}_amount,
        {% endfor %}
        sum(amount) as total_amount
        from {{ ref('raw_payments') }}
     group by 1

),

final as (

    select * from order_payment_method_amounts

)

select * from final