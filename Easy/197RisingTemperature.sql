# Write your MySQL query statement below
select w1.id
from Weather as w1 join Weather as w2
where DATEDIFF(w1.recordDate, w2.recordDate) = 1 and w1.Temperature > w2.Temperature
;