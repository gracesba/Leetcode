-- 586. Customer Placing the Largest Number of Orders

SELECT customer_number
FROM 
(SELECT customer_number, count(distinct order_number) as orders 
FROM orders 
GROUP BY customer_number) AS C
ORDER BY orders DESC 
LIMIT 1


SELECT distinct customer_number
FROM 
(SELECT customer_number, rank() over(ORDER BY orders DESC) as orders_rank
FROM 
(SELECT customer_number, count(distinct order_number) as orders 
FROM orders 
GROUP BY customer_number) AS C) AS T
WHERE orders_rank = 1

