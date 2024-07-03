CREATE PROCEDURE Archive_Completed_Projects()
BEGIN
    INSERT INTO Archive_Projects (Project_ID, Project_Name, Requirements, Deadline, Start_Date, End_Date, Completion_Date, Client_ID)
    SELECT Project_ID, Project_Name, Requirements, Deadline, Start_Date, End_Date, Completion_Date, Client_ID
    FROM Projects
    WHERE Deadline < CURDATE();
    
    DELETE FROM Projects WHERE Deadline < CURDATE();
END;
