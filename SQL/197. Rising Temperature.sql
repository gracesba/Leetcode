-- 197. Rising Temperature

SELECT distinct W1.Id
FROM Weather W1 inner join Weather W2 on W1.date = W2.date + interval '1 day' AND W1.Temperature > W2.Temperature