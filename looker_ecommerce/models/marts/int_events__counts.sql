{% set traffic_sources = ['Adwords', 'Email', 'Facebook', 'Organic', 'YouTube'] %}
{% set browsers = ['Chrome', 'Firefox', 'Safari', 'IE', 'Other'] %}

SELECT 
    user_id,
    {{ count_distinct('session_id') }} AS num_web_sessions,
    {% for traffic_source in traffic_sources -%}
        {{ count_distinct('CASE WHEN traffic_source = \'' ~ traffic_source ~ '\' THEN user_id END') }} AS num_traffic_source_{{ traffic_source }},
    {% endfor %}
    {% for browser in browsers -%}
        {{ count_distinct('CASE WHEN browser = \'' ~ browser ~ '\' THEN user_id END') }} AS num_browser_{{ browser }}{% if not loop.last %},{% endif %}
    {% endfor -%}        
FROM {{ ref('stg_looker__events') }}
GROUP BY 1