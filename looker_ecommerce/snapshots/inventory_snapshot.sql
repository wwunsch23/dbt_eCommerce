{% snapshot inventory_snapshot %}

{{
    config(
        target_schema='eCommerce',
        unique_key='id',
        strategy='timestamp',
        updated_at='created_at'
    )
}}

SELECT * 
FROM {{ source('eCommerce', 'inventory_items') }}

{% endsnapshot %}