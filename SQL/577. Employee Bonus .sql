-- 577. Employee Bonus 

SELECT E.name, B.bonus 
FROM Employee E left join 
(SELECT *
FROM Bonus 
WHERE bonus < 100) AS B on E.empID = B.empID