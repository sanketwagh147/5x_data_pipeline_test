{{ config (
    materialized="table"
)}}

select
    to_date(date) as date,
    province,
    location,
    total_recovered/1000 as total_recovered,
    total_deaths/1000 as total_deaths,
    total_cases/1000 as total_cases,
    total_active_cases/1000 as total_active_cases,
    population_density,
    population,
    latitude,
    longitude,
    LOCATION_ISO_CODE
from {{source('GOOGLE_SHEETS','COVID_19_INDONESIA_SANKET_WAGH')}}
where province is not null