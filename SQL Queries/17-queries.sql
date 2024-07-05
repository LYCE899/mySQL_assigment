CREATE FUNCTION Days_Overdue(ProjectID INT)
RETURNS INT
BEGIN
    DECLARE DaysLate INT;
    SELECT DATEDIFF(CURDATE(), Deadline) INTO DaysLate
    FROM Projects
    WHERE Project_ID = ProjectID AND Deadline < CURDATE();
    RETURN DaysLate;
END;
