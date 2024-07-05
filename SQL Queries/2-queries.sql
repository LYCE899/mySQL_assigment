SELECT p.* 
FROM Projects p
JOIN Clients c ON p.Client_ID = c.Client_ID
WHERE c.Client_Name = 'Big Retail Inc.'
ORDER BY p.Deadline;
