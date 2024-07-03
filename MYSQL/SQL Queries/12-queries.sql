CREATE VIEW Ongoing_Projects_View AS
SELECT *
FROM Projects
WHERE Completion_Date IS NULL;
