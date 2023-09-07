/*
1873. Calculate Special Bonus

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| employee_id | int     |
| name        | varchar |
| salary      | int     |
+-------------+---------+
employee_id is the primary key for this table.
Each row of this table indicates the employee ID, employee name, and salary.

Write an SQL query to calculate the bonus of each employee. 
The bonus of an employee is 100% of their salary if: 
> The ID of the employee is an odd number and 
> The employee name does not start with the character 'M'. 
The bonus of an employee is 0 otherwise.
Return the result table ordered by employee_id.
*/

SELECT employee_id, IF(employee_id%2 = 1 AND name NOT LIKE 'M%', salary, 0) AS bonus 
FROM employees
ORDER BY employee_id;
