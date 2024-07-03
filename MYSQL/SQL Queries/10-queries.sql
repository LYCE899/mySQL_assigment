SELECT Project_Name, 
       CASE 
           WHEN Deadline < CURDATE() THEN 'Project overdue' 
           ELSE 'Project on time' 
       END AS Status 
FROM Projects;
