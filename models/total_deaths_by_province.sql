select 
    
    province, 
    sum(Total_deaths) as Total_deaths

from {{source('GOOGLE_SHEETS','COVID_19_INDONESIA_SANKET_WAGH')}}
where province is not null
group by province