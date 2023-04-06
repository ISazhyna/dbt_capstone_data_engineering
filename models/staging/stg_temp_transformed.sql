{{config(
    materialized='view'
)}}

select
    datetime AS day,
    feelslikemax as feels_like_max,
    feelslike as feels_like_avg,
    conditions as conditions

from {{source('austin_crime', 'raw_temp')}}