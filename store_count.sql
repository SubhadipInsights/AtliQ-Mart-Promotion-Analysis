Select city, count(store_id) as store_count
From dim_stores
group by city
order by store_count desc;