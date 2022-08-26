with payments as
(
    select *
    from {{ ref('stg_payments')}}
),

orders as
(
    select * 
    from {{ ref('stg_orders') }}
),

customers as
(
    select *
    from {{ ref('stg_customers') }}
),

customers_orders as
(
    select *
    from customers
    left join orders using( CUSTOMER_ID )
),

orders_payments as
(
    select customers_orders.ORDER_ID as ORDER_ID,
           customers_orders.CUSTOMER_ID as CUSTOMER_ID,
           payments.AMOUNT as AMOUNT
    from payments
    left join customers_orders using ( ORDER_ID )
)

select *
from orders_payments