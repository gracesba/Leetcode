-- 596. Classes More Than 5 Students

SELECT distinct class 
FROM courses 
GROUP BY class 
Having count(distinct student) >= 5