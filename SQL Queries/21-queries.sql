CREATE TRIGGER Validate_Team_Leader
BEFORE INSERT ON Project_Team
FOR EACH ROW
BEGIN
    DECLARE EmployeeExists INT;
    SELECT COUNT(*) INTO EmployeeExists FROM Employees WHERE Employee_ID = NEW.Employee_ID;
    
    IF EmployeeExists = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'The employee assigned as team leader does not exist';
    END IF;
END;
