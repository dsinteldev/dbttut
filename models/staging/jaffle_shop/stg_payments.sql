select ID,
       ORDERID as ORDER_ID,
       PAYMENTMETHOD,
       STATUS,
       AMOUNT,
       CREATED,
       _BATCHED_AT
from raw.stripe.payment