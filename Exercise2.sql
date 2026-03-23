SELECT COUNT(ID) AS total_employees
FROM employees;

SELECT SUM(salary) AS total_IT_salary
FROM employees
WHERE department = 'IT';

SELECT AVG(salary) AS average_HR_salary
FROM employees
WHERE department = 'HR';

SELECT MIN(salary) AS lowest_salary,
       MAX(salary) AS highest_salary
FROM employees;

SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

SELECT city, COUNT(*) AS employee_count
FROM employees
GROUP BY city;

SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
ORDER BY average_salary DESC;

SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary) > 100000;

SELECT city, COUNT(*) AS employee_count
FROM employees
GROUP BY city
HAVING COUNT(*) > 1
ORDER BY employee_count DESC;

SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
ORDER BY average_salary DESC
LIMIT 1;
