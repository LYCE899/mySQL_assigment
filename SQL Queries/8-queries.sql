SELECT e.*
FROM Employees e
WHERE e.Employee_ID NOT IN (
    SELECT pt.Employee_ID
    FROM Project_Team pt
    WHERE pt.Team_Leader = 'Yes'
);
