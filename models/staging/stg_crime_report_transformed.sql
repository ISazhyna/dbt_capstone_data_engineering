{{config(
    materialized='table'
)}}

select
    crime_type,
    -- parse_date("%d-%m-%Y", occ_date_time) as date_of_incident,
    zip_code

from {{source('austin_crime', 'raw_data')}}