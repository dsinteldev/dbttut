select ID,
       ORDERID as ORDER_ID,
       PAYMENTMETHOD,
       STATUS,
       ( AMOUNT / 100 ) as amount,
       CREATED,
       _BATCHED_AT
from {{ source('stripe', 'payment') }}