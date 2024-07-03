CREATE VIEW November_Projects_View AS
SELECT p.Project_Name, c.Client_Name, c.Contact_Name, c.Contact_Email
FROM Projects p
JOIN Clients c ON p.Client_ID = c.Client_ID
WHERE p.Deadline BETWEEN '2024-11-01' AND '2024-11-30';
