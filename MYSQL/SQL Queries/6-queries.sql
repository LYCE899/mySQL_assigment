SELECT p.Project_Name, COUNT(tm.Employee_ID) AS Employee_Count
FROM Projects p
JOIN Team_Members tm ON p.Project_ID = tm.Project_ID
GROUP BY p.Project_Name;
