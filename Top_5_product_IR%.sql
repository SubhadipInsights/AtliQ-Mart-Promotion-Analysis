with CTE1 (product_code,category,revenue_before,revenue_after) as 
													       (Select fe.product_code,dp.category,
														           (fe.base_price*fe.quantity_sold_before_promo) as revenue_before,
														   case
														   when promo_type = "50% OFF" then base_price*0.5*quantity_sold_after_promo
														   when promo_type = "25% OFF" then base_price*0.75*quantity_sold_after_promo
														   when promo_type = "500 Cashback" then (base_price-500)*quantity_sold_after_promo    
														   when promo_type = "33% OFF" then base_price*0.67*quantity_sold_after_promo
														   when promo_type = "BOGOF" then (base_price/2)*quantity_sold_after_promo
														   End  as revenue_after
													FROM fact_events fe
                                                    join dim_products dp
                                                    on fe.product_code = dp.product_code),
	 CTE2 (product_code,category,total_revenue_before,total_revenue_after) as
                                                                  (Select product_code,category,
																		  sum(revenue_before) as total_revenue_before,
																		  sum(revenue_after) as total_revenue_after
																	from CTE1
																	group by product_code,category),
    CTE3 (product_code,category,total_revenue_before,IR) as 
                                                 (Select product_code,category,total_revenue_before,
                                                         (total_revenue_after-total_revenue_before) as IR
                                                  from CTE2 ) 
Select dp.product_name,CT.category,
       round((CT.IR/CT.total_revenue_before)*100,2) as IR_prcnt
from CTE3 CT
join dim_products dp
on CT.product_code = dp.product_code
order by IR_prcnt desc
limit 5;                                                 