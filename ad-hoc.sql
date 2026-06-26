SELECT * FROM dim_campaigns; --campaign_id, campaign_name, start_date, end_date
SELECT * FROM dim_products;-- product_code, product_name, category
SELECT * FROM  dim_stores;-- store_id, city --50 rows 
SELECT * FROM fact_events; -- event_id, store_id, campaign_id, product_code, base_price, promo_type, quantity_sold_before_promo, --quantity_sold_after_promo


-------------------------------Feature Engeneering---------------------------------------------------------------------------
-- Adding total_sales_before_promo
ALTER TABLE fact_events 
ADD COLUMN total_sales_before_promo FLOAT;
--Changed data type to INT 
ALTER TABLE fact_events 
ALTER COLUMN total_sales_before_promo TYPE INT;

--Put data into total_sales_before_promo 
UPDATE fact_events 
SET total_sales_before_promo = base_price*quantity_sold_before_promo

--Adding total_sales_after_promo 
ALTER TABLE fact_events 
ADD COLUMN total_sales_after_promo INT;

--Putting data into total_sales_after_promo
UPDATE fact_events
SET total_sales_after_promo =
    CASE
        WHEN promo_type = '50% OFF'
            THEN base_price * 0.50 * quantity_sold_after_promo

        WHEN promo_type = '25% OFF'
            THEN base_price * 0.75 * quantity_sold_after_promo

        WHEN promo_type = '33% OFF'
            THEN base_price * 0.67 * quantity_sold_after_promo

        WHEN promo_type = 'BOGOF'
            THEN (base_price * quantity_sold_after_promo) / 2

        WHEN promo_type = '500 Cashback'
            THEN (base_price - 500) * quantity_sold_after_promo
    END;


----------------------------- Ad-Hoc Questions ------------------------------------------------------------------

--1.List of Products with base price greater than 500 and are featured in promo type 'BOGOF'
SELECT DISTINCT p.product_name, fe.base_price, promo_type 
FROM dim_products p
INNER JOIN fact_events fe 
ON fe.product_code = p.product_code 
WHERE fe.base_price >= 500 
AND fe.promo_type = 'BOGOF'
-- There are two products having base_price greater than 1000 that are getting 'BOGOF' offer.

--2.Stores Per City in descending order 
SELECT city, COUNT(*) No_of_city
FROM dim_stores
GROUP BY city
ORDER BY No_of_city DESC 
-- Bengaluru has the highest number of cities followed by Chennai

--3.Comparing revenue before and after promo
SELECT SUM(total_sales_before_promo) total_revenue_before_promo,
	   SUM(total_sales_after_promo) total_revenue_after_promo,
	   SUM(total_sales_after_promo) - SUM(total_sales_before_promo) Rev_inc, 
	   ROUND((SUM(total_sales_after_promo) - SUM(total_sales_before_promo))*100.00/SUM(total_sales_before_promo),2) as Rev_inc_pct	   
FROM fact_events;
-- Growth of 76.25% in revenue was seen. 

--4. Category wise ISU% and ranking
WITH ISU_summary as (
		SELECT product_name, category,  
	    ROUND((quantity_sold_after_promo - quantity_sold_before_promo)*100.00/quantity_sold_before_promo,2) ISU_percentage	   
		FROM fact_events e
		LEFT JOIN dim_products p 
		ON e.product_code = p.product_code
	)

SELECT category, ROUND(AVG(isu_percentage),2) avg_isu,
	   DENSE_RANK() OVER(ORDER BY AVG(isu_percentage) DESC)  rnk
FROM isu_summary
GROUP BY category
ORDER BY avg_isu DESC
--Home Appliances saw growth ISU% of 258.07% and Combo1 saw growth of 162.17%. Personal Care only growth of 20% is questionable

--5.Top 5 products ranked by incrementalo revenue 
WITH IR_summary as (
		SELECT product_name, category,  
	    ROUND((total_sales_after_promo - total_sales_before_promo)*100.00/total_sales_before_promo,2) IR_percentage	   
		FROM fact_events e
		LEFT JOIN dim_products p 
		ON e.product_code = p.product_code
		)
SELECT product_name, category, 
		IR_percentage,
		DENSE_RANK() OVER(ORDER BY ir_percentage DESC)
FROM IR_summary 
LIMIT 5;
-- All top 5 products come under Combo1 Category ir_percentage 199.15 is highest. 


--Additional analysis 
SELECT promo_type,
       SUM(total_sales_after_promo) revenue_after,
       SUM(total_sales_before_promo) revenue_before,
	   SUM(total_sales_after_promo)-SUM(total_sales_before_promo) diff
FROM fact_events
GROUP BY promo_type
ORDER BY diff DESC;
-- 500 cashback generated the most revenue, BOGOF generated good amount of revenue as well rest are facing loss.











