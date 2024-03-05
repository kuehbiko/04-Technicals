/*
Salaries Differences
Companies: LinkedIn, Dropbox
Categories: Data Engineer, Data Scientist, BI Analyst, Data Analyst, ML Engineer

Write a query that calculates the difference between the highest salaries found in the marketing and engineering departments. Output just the absolute difference in salaries.

Tables: db_employee, db_dept

db_employee
id:int
first_name:varchar
last_name:varchar
salary:int
department_id:in

db_dept
id:int
department:varchar
*/

-- want: max salary in marketing, max salary in engineering
-- SELECT ABS(AX(salary in marketing) - MAX(salary in engineering))
-- note: need to join tables to get the relevant departments
-- JOIN db_employee, db_dept ON db_employee.department_id = db_dept.id

SELECT
    ABS(
        (SELECT MAX(salary)
        FROM db_employee emp
        JOIN db_dept dept
            ON emp.department_id = dept.id
        WHERE department = 'marketing') 
        - 
        (SELECT MAX(salary)
        FROM db_employee emp
        JOIN db_dept dept
            ON emp.department_id = dept.id
        WHERE department = 'engineering')
    ) AS salary_difference;
