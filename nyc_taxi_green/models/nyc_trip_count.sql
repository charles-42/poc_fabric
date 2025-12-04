with new_york_taxis as (
    select * from nyc_taxi_green
),
final as (
  select
    VendorID,
    CAST(lpep_pickup_datetime AS DATE) as trip_date,
    count(*) as trip_count
  from new_york_taxis
  group by
    VendorID,
    CAST(lpep_pickup_datetime AS DATE)
)
select *
from final;