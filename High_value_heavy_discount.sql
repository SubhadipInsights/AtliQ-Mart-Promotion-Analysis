Select distinct(dm.product_name)    
From fact_events fe
left join dim_products dm
on fe.product_code = dm.product_code
where base_price >500 and promo_type = "BOGOF";