select 
    
    province, 
    sum(total_recovered) as total_recovered

from {{source('GOOGLE_SHEETS','COVID_19_INDONESIA_SANKET_WAGH')}}
where province is not null
group by province