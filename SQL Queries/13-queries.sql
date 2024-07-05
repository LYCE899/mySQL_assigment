CREATE VIEW Project_Leaders_View AS
SELECT p.Project_Name, e.Employee_Name AS Team_Leader
FROM Projects p
JOIN Project_Team pt ON p.Project_ID = pt.Project_ID
JOIN Employees e ON pt.Employee_ID = e.Employee_ID
WHERE pt.Team_Leader = 'Yes';
