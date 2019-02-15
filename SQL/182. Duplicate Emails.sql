-- 182. Duplicate Emails

SELECT distinct Email 
FROM Person 
GROUP BY Email 
Having count(*) > 1