-- 176. Second Highest Salary

SELECT Salary as SecondHighestSalary
FROM 
(SELECT Id, Salary, rank() over(order by Salary DESC) as rank
FROM Employee) AS E
WHERE rank = 2


SELECT Max(Salary) as SecondHighestSalary
FROM Employee
WHERE Salary < (
SELECT max(Salary) as highestsalary
FROM Employee
)

SELECT 
(SELECT DISTINCT Salary
FROM Employee
ORDER BY Salary DESC 
LIMIT 1 OFFSET 1) as SecondHighestSalary
