select 
    to_date(date) as date,
    sum(total_active_cases) as total_active_cases
from {{source('GOOGLE_SHEETS','COVID_19_INDONESIA_SANKET_WAGH')}}
where date is not null
group by date
order by 1
