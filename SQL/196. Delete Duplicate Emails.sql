-- 196. Delete Duplicate Emails
SELECT P1.*
FROM Person P1 inner join Person P2 on P1.Id <= P2.Id AND P1.Email = P2.Email 

DELETE P1.*
FROM Person P1 inner join Person P2 on P1.Id < P2.Id AND P1.Email = P2.Email 

SELECT distinct Email, min(Id) as Id
FROM Person 
