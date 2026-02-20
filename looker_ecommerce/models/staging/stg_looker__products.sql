SELECT *
FROM {{ source('eCommerce', 'products') }}