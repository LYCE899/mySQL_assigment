CREATE TRIGGER Audit_Project_Update
AFTER UPDATE ON Projects
FOR EACH ROW
BEGIN
    INSERT INTO Audit_Projects (Project_ID, Project_Name, Requirements, Deadline, Start_Date, End_Date, Completion_Date, Client_ID, Modification_Date)
    VALUES (NEW.Project_ID, NEW.Project_Name, NEW.Requirements, NEW.Deadline, NEW.Start_Date, NEW.End_Date, NEW.Completion_Date, NEW.Client_ID, NOW());
END;
