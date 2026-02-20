SELECT *
FROM {{ source('eCommerce', 'orders') }}