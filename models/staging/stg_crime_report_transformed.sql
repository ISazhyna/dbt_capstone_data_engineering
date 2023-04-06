{{config(
    materialized='view'
)}}

select
    crime_type,
    category_description,
    family_violence,
    cast(parse_timestamp('%m/%d/%Y', `occ_date`) as date) AS occ_date,
    zip_code

from {{source('austin_crime', 'raw_data')}} d