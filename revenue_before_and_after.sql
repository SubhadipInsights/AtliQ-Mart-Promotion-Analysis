with ppp (event_id,campaign_id,product_code,base_price,
         quantity_sold_before_promo,quantity_sold_after_promo,promo_price)
				  as            (SELECT event_id,campaign_id,product_code,base_price,
								quantity_sold_before_promo,quantity_sold_after_promo,
																					case
																					when promo_type = "50% OFF" then base_price*0.5
																					when promo_type = "25% OFF" then base_price*0.75
																					when promo_type = "500 Cashback" then base_price-500     
																					when promo_type = "33% OFF" then base_price*0.67
																					when promo_type = "BOGOF" then base_price/2
																					End  as promo_price
																					FROM fact_events    
                                 ) ,    # print all the useful columns and also calculate each of the item price after promotion as poromo_price                                                               
		
        w_table (event_id,campaign_id,product_code,
                 Revenue_before,Revenue_after)     as        (select event_id,campaign_id,product_code,
															 base_price*quantity_sold_before_promo as Revenue_before,
															 promo_price*quantity_sold_after_promo as Revenue_after
													         from ppp  )      # now calculate revenue before promotion as Revenue_before
                                                                              # and calculate revenue after promotion as Revenue_after
                                                                              
Select wt.campaign_id, dc.campaign_name, 
       concat(round(sum(Revenue_before)/1000000,2)," Million") as Total_revenue_before,
       concat(round(sum(Revenue_after)/1000000,2)," Million") as Total_revenue_after
from w_table wt
join dim_campaigns dc
on wt.campaign_id = dc.campaign_id
group by campaign_id    ;          # now calculate total revenue of every campaign before and after promotion      