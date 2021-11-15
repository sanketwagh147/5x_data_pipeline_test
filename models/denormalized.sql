{{ config (
    materialized="table"
)}}

select *
 
from {{source('GOOGLE_SHEETS','COVID_19_INDONESIA_SANKET_WAGH')}}