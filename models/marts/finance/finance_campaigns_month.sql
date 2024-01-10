select
    date_trunc(date_date, month) as datemonth,
    ads_margin,
    average_basket,
    operational_margin
from {{ ref("finance_campaigns_day") }}
order by date_date desc
