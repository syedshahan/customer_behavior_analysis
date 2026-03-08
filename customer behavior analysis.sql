SELECT * FROM Customer Limit 20

-- Q1. What is total revenue generate by male vs female customers?
SELECT 
gender,
SUM(purchase_amount) as total_revenue
FROM Customer
GROUP BY gender

-- Q2. Which customers used a discount but still spent more than the average purchase amount?
SELECT customer_id, purchase_amount
FROM customer
WHERE discount_applied = 'Yes' AND purchase_amount >= (SELECT AVG(purchase_amount) as avg_amount FROM Customer)
Order By purchase_amount DESC

-- Q3. Which are the top 5 products with the highest average review rating?
SELECT item_purchased,
		ROUND(AVG(review_rating::numeric), 2) as avg_rating
FROM Customer
GROUP BY item_purchased
ORDER BY avg_rating DESC
LIMIT 5

-- Q4. Compare the average purchase amounts between standard and express shipping.
SELECT 
shipping_type,
ROUND(AVG(purchase_amount), 2) as avg_amount
FROM customer
WHERE shipping_type IN ('Express', 'Standard')
GROUP By shipping_type

--Q5. Do subscribed customers spend more? Compare average spend and total revenue between subscribers and non-subscribers.
SELECT 
subscription_status,
COUNT(customer_id) as total_customers,
SUM(purchase_amount) as total_revenue,
ROUND(AVG(purchase_amount), 2) as avg_revenue
FROM Customer
GROUP BY subscription_status
ORDER BY total_revenue, avg_revenue DESC

--Q6. Which 5 products have the highest percentage of purchases with discounts applied?
SELECT item_purchased,
ROUND(
100.0 * SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 
2
) AS discount_rate
FROM customer
GROUP BY item_purchased
ORDER BY discount_rate DESC
LIMIT 5;

--Q7. Segment customers into New, Returning, and Loyal based on their total 
-- number of previous purchases, and show the count of each segment. 
WITH customer_type as (
SELECT customer_id, previous_purchases,
CASE 
	WHEN previous_purchases = 1 THEN 'NEW'
	WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
	ELSE 'Loyal'
END AS customer_segment
FROM Customer
) 	

SELECT customer_segment, COUNT(*) as "Num. of Customers"
FROM customer_type
GROUP BY customer_segment

--Q8. What are the top 3 most purchased products within each category? 
WITH cte1 AS (
SELECT category, item_purchased,
COUNT(*) as total_purchases
FROM Customer
GROUP BY category, item_purchased
),
cte2 AS (
SELECT category, item_purchased, total_purchases,
ROW_NUMBER() OVER (PARTITION BY category ORDER BY total_purchases DESC) as ranking
FROM cte1
)

SELECT category, item_purchased, total_purchases, ranking
FROM cte2
WHERE ranking <= 3

--Q9. Are customers who are repeat buyers (more than 5 previous purchases) also likely to subscribe?
SELECT subscription_status,
COUNT(customer_id) as repeat_buyers
FROM Customer
WHERE previous_purchases > 5
GROUP BY subscription_status

--Q10. What is the revenue contribution for each age group?
SELECT age_group,
SUM(purchase_amount) as revenue_cont
FROM Customer
GROUP BY age_group 
ORDER BY revenue_cont DESC

