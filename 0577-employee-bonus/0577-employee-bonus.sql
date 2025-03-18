# Write your MySQL query statement below
SELECT E.name, B.bonus
FROM Employee E LEFT JOIN Bonus B USING (empId)
WHERE B.bonus < 1000 or B.bonus is null