-- 607. Sales Person

SELECT name 
FROM salesperson 
WHERE sales_id not in (
SELECT distinct sales_id
FROM order o left join company c on c.com_id = o.com_id 
WHERE c.name = 'RED'
)