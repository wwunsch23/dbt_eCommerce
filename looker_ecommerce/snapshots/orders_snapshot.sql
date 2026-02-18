{% snapshot orders_snapshot %}

{{
    config(
        target_schema='eCommerce',
        unique_key='order_id',
        strategy='timestamp',
        updated_at='created_at' 
    )
}}

SELECT * 
FROM {{ source('eCommerce', 'orders') }}

{% endsnapshot %}
