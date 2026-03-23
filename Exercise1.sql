SELECT * 
FROM employees;

SELECT DISTINCT department
FROM employees;

SELECT first_name, last_name
FROM employees
ORDER BY salary DESC;

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 5;

SELECT *
FROM employees
WHERE department = 'IT';

SELECT *
FROM employees
WHERE department = 'Finance'
AND salary > 58000;

SELECT *
FROM employees
WHERE department = 'HR'
OR department = 'Marketing';

SELECT *
FROM employees
WHERE department NOT IN ('IT');

SELECT *
FROM employees
WHERE department IN ('HR','IT','Finance');

SELECT *
FROM employees
WHERE department = 'IT'
AND salary > 50000
AND city = 'New York';

SELECT first_name, last_name
FROM employees
WHERE (department = 'Finance' OR department = 'Marketing')
AND salary > 52000
ORDER BY salary DESC;

SELECT DISTINCT city
FROM employees
WHERE department NOT IN ('IT','HR');

SELECT *
FROM employees
WHERE department != 'Finance'
AND salary > 50000
ORDER BY hire_date ASC;

SELECT *
FROM employees
WHERE city IN ('Chicago','Los Angeles')
AND department IN ('IT','Marketing')
LIMIT 3;
