-- 1965. Employees With Missing Information
-- Write an SQL query to report the IDs of all the employees with missing information. 
-- > The information of an employee is missing if:
-- > The employee's name is missing, or
-- > The employee's salary is missing.
-- Return the result table ordered by employee_id in ascending order.

SELECT 
  e.employee_id 
FROM employees e
LEFT JOIN salaries s
  ON e.employee_id = s.employee_id
WHERE s.salary IS NULL

UNION

SELECT 
  s.employee_id 
FROM salaries s
LEFT JOIN employees e
  ON s.employee_id = e.employee_id
WHERE e.name IS NULL

ORDER BY employee_id;
