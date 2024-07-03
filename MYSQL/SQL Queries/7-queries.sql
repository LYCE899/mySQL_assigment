SELECT DISTINCT c.*
FROM Clients c
JOIN Projects p ON c.Client_ID = p.Client_ID
WHERE p.Deadline > '2024-10-31';
