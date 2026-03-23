SELECT EmployeeID, FirstName, LastName, Department, Salary,
       ProjectID, ProjectName, Budget, Status
FROM Employees As A
INNER JOIN Projects As B
ON A.EmployeeID = B.EmployeeID;

SELECT EmployeeID, FirstName, LastName, Department, Salary,
       ProjectID, ProjectName, Budget, Status
FROM Employees As A
LEFT JOIN Projects As B
ON A.EmployeeID = B.EmployeeID;

SELECT ProjectID, ProjectName, Budget, Status,
       EmployeeID, FirstName, LastName, Department, Salary
FROM Employees As A
RIGHT JOIN Projects As B
ON EmployeeID = EmployeeID;

SELECT EmployeeID, FirstName, LastName, Department, Salary,
       ProjectID, ProjectName, Budget, Status
FROM Employees As A
FULL OUTER JOIN Projects As B
ON A.EmployeeID = B.EmployeeID;

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

SELECT EmployeeID, FirstName, LastName,
       SUM(Budget) AS TotalProjectBudget
FROM Employees As A
JOIN Projects As B
ON A.EmployeeID = B.EmployeeID
GROUP BY EmployeeID, FirstName, LastName
HAVING SUM(Budget) > 150000;
