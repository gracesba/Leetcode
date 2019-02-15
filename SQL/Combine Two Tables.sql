-- 175. Combine Two Tables
SELECT distinct P.FristName, P.LastName, A.City, A.State
FROM Person P left join Address A on P.PersonID = A.PersonID