# Write your MySQL query statement below
SELECT  emp.name,
        b.bonus
FROM    Employee emp LEFT JOIN
        Bonus b ON emp.empID = b.empID
WHERE   b.bonus IS NULL OR b.bonus<1000;