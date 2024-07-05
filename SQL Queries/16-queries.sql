CREATE FUNCTION Days_Remaining(ProjectID INT)
RETURNS INT
BEGIN
    DECLARE DaysLeft INT;
    SELECT DATEDIFF(Deadline, CURDATE()) INTO DaysLeft
    FROM Projects
    WHERE Project_ID = ProjectID;
    RETURN DaysLeft;
END;
