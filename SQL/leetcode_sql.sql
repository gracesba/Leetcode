-- 577. Employee Bonus
SELECT E.name, B.bonus
FROM Employee E left join Bonus B on E.empID = B.empID
WHERE B.bonus < 1000 or B.bonus is NULL 

-- 584. Find Customer Referee 
SELECT name 
FROM customer 
WHERE referee_id != 2 or referee_id is NULL 

-- 586. Customer Placing the Largest Number of Orders
SELECT customer_number
FROM orders 
GROUP BY customer_number
ORDER BY count(*) desc 
LIMIT 1

-- 603. Consecutive Available Seats
SELECT distinct a.seat_idabs
FROM cinema a join cinema b on (a.seat_id - b.seat_id) = 1
and a.free = true and b.free = true 
order by a.seat_id

-- 607. Sales Person
SELECT name
FROM salesperson 
WHERE sale_id not in (
SELECT o.sales_id
FROM orders o join company c on c.com_id = o.com_id
WHERE c.name = 'RED')

-- 610. Triangle Judgement
select *, case when x+y>z and x+z > y and y+z > x then 'Yes'
ELSE 'NO' END AS 'triangle'
from triangle;

-- 613. Shortest Distance in a Line
SELECT min(distance) as shortest
FROM (
SELECT abs(p1.x - p2.x) as distance
FROM point p1 join point p2 on p1.x != p2.x)

SELECT min(abs(p1.x - p2.x)) as distance
FROM point p1 join point p2 on p1.x != p2.x

-- 619. Biggest Single Number
SELECT num 
FROM number 
GROUP BY 1
HAVING COUNT(*) = 1
ORDER BY 1 DESC
LIMIT 1

-- 620. Not Boring Movies
SELECT *
FROM cinema
WHERE description != 'boring' and id % 2 = 1
ORDER BY rating desc

-- 627. Swap Salary
UPDATE Salary
SET sex = (CASE WHEN sex = 'm' THEN 'f' ELSE 'm' END)

-- 180. Consecutive Numbers
SELECT distinct l1.num as ConsecutiveNums
FROM Logs l1 join Logs l2 on l2.id - l1.id= 1 
join Logs l3 on l3.id - l2.id = 1
WHERE l1.Num = l2.Num and l2.Num = l3.Num 

-- 177. Nth Highest Salary
SELECT Salary
FROM
(SELECT Salary, row_number() over(order by salary desc) as salary_rank
FROM Employee) as foo 
WHERE salary_rank = n 

-- 178. Rank Scores
SELECT scores, row_number() over(order by scores desc) as Rank 
FROM Scores

SELECT s.score, count(distinct t.score) as Rank
FROM scores s join scores t on s.score <= t.score 
GROUP BY s.id 
ORDER BY 1 

-- 184. Department Highest Salary
SELECT Department, Employee, Salary
FROM
(SELECT d.name as Department, e.name as Employee, e.salary, row_number() over(partition by d.id over by e.salary desc) as rank 
FROM Employee e JOIN Department d on e.descriptionId = d.Id 
GROUP BY d.name) as foo 
WHERE rank = 1

-- 570. Managers with at Least 5 Direct Reports
SELECT e2.name 
FROM Employee e1 left join Employee e2 on e1.id = e2.ManagerId 
GROUP BY 1
HAVING COUNT(DISTINCT e1.id) >= 5

-- 574. Winning Candidate
SELECT name 
FROM candidate 
where id in 
(SELECT c.id 
FROM vote v join candidate c on v.candidateid = c.id 
group by c.id 
order by count(distinct v.id) desc 
limit 1) 

-- 578. Get Highest Answer Rate Question
SELECT question_id as survey_log
FROM
(SELECT question_id, sum(case when action = 'show' then 1 else 0 end) as shows, sum(case when action = 'answer' then 1 else 0) as answers
FROM survey_log 
GROUP BY 1) as foo 
ORDER BY answers/shows DESC 
LIMIT 1

-- 580. Count Student Number in Departments
SELECT d.dept_name, count(distinct s.id)
FROM Department d left join student s on d.dept_id = s.dept_id
GROUP BY d.dept_name
ORDER BY 2 DESC, 1


-- 
