select 
    to_date(date) as date,
    sum(total_recovered) as total_recovered
from {{source('GOOGLE_SHEETS','COVID_19_INDONESIA_SANKET_WAGH')}}
where date is not null
group by date
order by 1
