-- 181. Employees Earning More Than Their Managers

SELECT distinct E1.Name as Employee
FROM Employees E1 left join Employees E2 on E1.ManagerId = E2.ManagerId
WHERE E1.Salary > E2.Salary 