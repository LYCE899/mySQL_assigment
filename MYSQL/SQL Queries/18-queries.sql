CREATE PROCEDURE Add_Client_Project (
    IN ClientName VARCHAR(255), 
    IN ContactName VARCHAR(255), 
    IN ContactEmail VARCHAR(255), 
    IN ProjectName VARCHAR(255), 
    IN Requirements TEXT, 
    IN Deadline DATE, 
    IN StartDate DATE, 
    IN EndDate DATE, 
    IN CompletionDate DATE
)
BEGIN
    DECLARE NewClientID INT;
    
    INSERT INTO Clients (Client_Name, Contact_Name, Contact_Email)
    VALUES (ClientName, ContactName, ContactEmail);
    
    SET NewClientID = LAST_INSERT_ID();
    
    INSERT INTO Projects (Project_Name, Requirements, Deadline, Start_Date, End_Date, Completion_Date, Client_ID)
    VALUES (ProjectName, Requirements, Deadline, StartDate, EndDate, CompletionDate, NewClientID);
END;
