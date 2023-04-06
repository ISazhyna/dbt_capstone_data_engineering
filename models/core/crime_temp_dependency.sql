{{ config(materialized='table') }}

SELECT
    day, 
    crime_type as crime_type,
    family_violence,
    feels_like_max,
    conditions,
FROM {{ ref('stg_crime_report_transformed') }} b
join {{ ref('stg_temp_transformed') }} l
    on b.occ_date=l.day
