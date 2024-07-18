-- Write your MySQL query statement below
SELECT name, bonus
FROM Employee e
LEFT JOIN Bonus b ON e.empId = b.empId
WHERE bonus < 1000 OR bonus IS NULL; -- question considers NULL also so need to include
