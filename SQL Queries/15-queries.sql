CREATE VIEW Employee_Project_Count_View AS
SELECT e.Employee_Name, COUNT(tm.Project_ID) AS Project_Count
FROM Employees e
JOIN Team_Members tm ON e.Employee_ID = tm.Employee_ID
GROUP BY e.Employee_Name;
