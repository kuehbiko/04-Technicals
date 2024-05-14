/*
Finding Updated Records
Companies: Microsoft
Categories: Data Engineer, Data Scientist, BI Analyst, Data Analyst, ML Engineer

We have a table with employees and their salaries, however, some of the records are old and contain outdated salary information. 
Find the current salary of each employee assuming that salaries increase each year. 
Output their id, first name, last name, department ID, and current salary. 
Order your list by employee ID in ascending order.

Table: ms_employee_salary

ms_employee_salary
id:int
first_name:varchar
last_name:varchar
salary:int
department_id:int
*/

SELECT id, first_name, last_name, department_id, salary
FROM(
    SELECT id, first_name, last_name, department_id, salary,
     ROW_NUMBER() OVER(PARTITION BY id ORDER BY salary DESC) AS rank
    FROM ms_employee_salary) AS subquery
WHERE rank = 1;
