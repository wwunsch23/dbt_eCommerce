SELECT *
FROM {{ source('eCommerce', 'order_items') }}