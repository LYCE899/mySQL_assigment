SELECT COUNT(*)
FROM Projects p
JOIN Team_Members tm ON p.Project_ID = tm.Project_ID
JOIN Employees e ON tm.Employee_ID = e.Employee_ID
WHERE e.Employee_Name = 'David Lee';
