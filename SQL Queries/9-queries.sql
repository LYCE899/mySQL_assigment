(SELECT * FROM Projects WHERE Deadline < '2024-12-01')
UNION
(SELECT * FROM Projects WHERE Project_Name LIKE '%Management%');
