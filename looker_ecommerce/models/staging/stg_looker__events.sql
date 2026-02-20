SELECT *
FROM {{ source('eCommerce', 'events') }}