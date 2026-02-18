SELECT *
FROM {{ source('eCommerce', 'inventory_items') }}