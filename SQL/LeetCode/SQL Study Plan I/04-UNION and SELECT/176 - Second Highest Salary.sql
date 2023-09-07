-- 176. Second Highest Salary
-- Write an SQL query to report the second highest salary from the Employee table. 
-- If there is no second highest salary, the query should report null.

SELECT 
  MAX(salary) AS secondhighestsalary 
FROM employee
WHERE 
  salary NOT IN (SELECT MAX(salary)
                 FROM employee)
ORDER BY salary DESC
;
