Select 
    id,
    name,
    latitude,
    longitude,
From 
    {{ ref('distribution_centers') }}