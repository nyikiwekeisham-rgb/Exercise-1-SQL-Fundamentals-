SELECT e.EmployeeID, e.FirstName, e.LastName, e.Department, e.Salary,
       p.ProjectID, p.ProjectName, p.Budget, p.Status
FROM Employees e
INNER JOIN Projects p
ON e.EmployeeID = p.EmployeeID;

SELECT e.EmployeeID, e.FirstName, e.LastName, e.Department, e.Salary,
       p.ProjectID, p.ProjectName, p.Budget, p.Status
FROM Employees e
LEFT JOIN Projects p
ON e.EmployeeID = p.EmployeeID;

SELECT p.ProjectID, p.ProjectName, p.Budget, p.Status,
       e.EmployeeID, e.FirstName, e.LastName, e.Department, e.Salary
FROM Employees e
RIGHT JOIN Projects p
ON e.EmployeeID = p.EmployeeID;

SELECT e.EmployeeID, e.FirstName, e.LastName, e.Department, e.Salary,
       p.ProjectID, p.ProjectName, p.Budget, p.Status
FROM Employees e
FULL OUTER JOIN Projects p
ON e.EmployeeID = p.EmployeeID;

SELECT City AS Location FROM Employees
UNION
SELECT Status AS Location FROM Projects;

SELECT City AS Location FROM Employees
UNION ALL
SELECT Status AS Location FROM Projects;

SELECT EmployeeID, FirstName, LastName, Department, Salary
FROM Employees
WHERE Salary > 70000;

SELECT EmployeeID, FirstName, LastName, Department, Salary
FROM Employees
WHERE Department IN ('IT','Finance');

SELECT ProjectID, ProjectName, Budget, Status
FROM Projects
WHERE Status != 'Completed';

SELECT ProjectID, ProjectName, Budget, Status
FROM Projects
WHERE Budget > 70000
AND Status != 'Completed';

SELECT EmployeeID, FirstName, LastName, Department, Salary, City
FROM Employees
WHERE City IN ('New York','Toronto')
ORDER BY Salary DESC;

SELECT EmployeeID, FirstName, LastName, Department, Salary
FROM Employees
ORDER BY Salary DESC
LIMIT 3;

SELECT Department, SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY Department
ORDER BY TotalSalary DESC;

SELECT City, AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY City
HAVING AVG(Salary) > 65000;

SELECT Status, COUNT(ProjectID) AS ProjectCount
FROM Projects
GROUP BY Status
HAVING COUNT(ProjectID) >= 2;

SELECT e.EmployeeID, e.FirstName, e.LastName,
       SUM(p.Budget) AS TotalProjectBudget
FROM Employees e
JOIN Projects p
ON e.EmployeeID = p.EmployeeID
GROUP BY e.EmployeeID, e.FirstName, e.LastName
HAVING SUM(p.Budget) > 150000;
