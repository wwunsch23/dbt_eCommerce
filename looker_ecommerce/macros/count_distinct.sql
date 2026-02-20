{%- macro count_distinct(column_name) -%}
    COUNT(DISTINCT {{ column_name }})
{%- endmacro %}