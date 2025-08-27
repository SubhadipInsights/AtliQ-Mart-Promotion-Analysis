with CTE1 (category,Total_quantity_before,Total_quantity_after)  # using common table expression as CTE1
    as (Select dp.category,
       sum(fe.quantity_sold_before_promo) as Total_quantity_before,
	   sum(fe.quantity_sold_after_promo) as Total_quantity_after       
	   from fact_events fe
       join dim_products dp
       on fe.product_code = dp.product_code
       where campaign_id = "CAMP_DIW_01"
       group by dp.category ),
CTE2 (category,Total_quantity_before,ISU)                             # using CTE2
	as  (Select category,Total_quantity_before,
                Total_quantity_after-Total_quantity_before as ISU
		from CTE1 ),
CTE3 (category,ISU_prcnt)                                             # using CTE3
    as (Select category,
		       Round((ISU/Total_quantity_before)*100,2) as  ISU_prcnt
		from CTE2 )
Select *,
      row_number() over() as Rank_order
from CTE3
order by ISU_prcnt desc ;
     