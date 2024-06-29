-- Use the DataBase ToDoDB
USE ToDoDB;
GO

---------------------------------------- INSERT DATA ---------------------------------------

---> Insert Data Into [User]
INSERT INTO [User]
    (UserID, Name, LastName, Age, PhoneNumber, UserName, Password, Email, Image, Country)
VALUES
    ('f1c0423e-f36b-1410-8361-00d8b93b39a5', 'John', 'Doe', 30, '123-456-7890', 'johndoe', 'password123', 'john.doe@email.com', '/images/johndoe.jpg', 'USA'),
    ('f6c0423e-f36b-1410-8361-00d8b93b39a5', 'Jane', 'Smith', 25, '987-654-3210', 'janesmith', 'letmein', 'jane.smith@email.com', '/images/janesmith.jpg', 'Canada'),
    ('fbc0423e-f36b-1410-8361-00d8b93b39a5', 'Michael', 'Johnson', 35, '456-789-0123', 'mjohnson', 'securepass', 'michael.johnson@email.com', '/images/mjohnson.jpg', 'Australia'),
    ('00c1423e-f36b-1410-8361-00d8b93b39a5', 'Emily', 'Brown', 28, '789-012-3456', 'emilyb', 'strongpwd', 'emily.brown@email.com', '/images/emilybrown.jpg', 'UK'),
    ('05c1423e-f36b-1410-8361-00d8b93b39a5', 'David', 'Martinez', 32, '234-567-8901', 'dmartinez', 'dm1234', 'david.martinez@email.com', '/images/dmartinez.jpg', 'Mexico'),
    ('0ac1423e-f36b-1410-8361-00d8b93b39a5', 'Sarah', 'Garcia', 29, '567-890-1234', 'sarahg', 'passw0rd', 'sarah.garcia@email.com', '/images/sarahgarcia.jpg', 'Spain'),
    ('0fc1423e-f36b-1410-8361-00d8b93b39a5', 'Chris', 'Wilson', 31, '890-123-4567', 'cwilson', 'chrispass', 'chris.wilson@email.com', '/images/cwilson.jpg', 'Germany'),
    ('14c1423e-f36b-1410-8361-00d8b93b39a5', 'Jessica', 'Lee', 27, '345-678-9012', 'jessicalee', 'jlee123', 'jessica.lee@email.com', '/images/jessicalee.jpg', 'Japan'),
    ('19c1423e-f36b-1410-8361-00d8b93b39a5', 'Kevin', 'Clark', 33, '678-901-2345', 'kclark', 'kevinc', 'kevin.clark@email.com', '/images/kclark.jpg', 'Brazil'),
    ('1ec1423e-f36b-1410-8361-00d8b93b39a5', 'Amanda', 'Lopez', 26, '901-234-5678', 'amandal', 'alopez', 'amanda.lopez@email.com', '/images/alopez.jpg', 'Argentina');
GO

---> Insert Data Into [State]
INSERT INTO [State]
    (Name)
VALUES
    ('Open'),
    ('In Progress'),
    ('Closed'),
    ('On Hold');
GO

---> Insert Data Into [Project]
INSERT INTO [Project]
    (Name, Description, StartDate, EndDate, DateCreated, StateID, UserID)
VALUES
    ('Project A', 'This is project A', '2024-01-15', '2024-06-30', GETDATE(), 1, 'f1c0423e-f36b-1410-8361-00d8b93b39a5'),
    ('Project B', 'Project B description', '2024-02-01', '2024-07-15', GETDATE(), 2, 'f6c0423e-f36b-1410-8361-00d8b93b39a5'),
    ('Project C', 'Detailed description of project C', '2024-03-10', '2024-08-31', GETDATE(), 3, 'fbc0423e-f36b-1410-8361-00d8b93b39a5'),
    ('Project D', 'Short description for project D', '2024-04-05', '2024-09-15', GETDATE(), 1, '00c1423e-f36b-1410-8361-00d8b93b39a5'),
    ('Project E', 'Project E details here', '2024-05-20', '2024-10-31', GETDATE(), 2, '05c1423e-f36b-1410-8361-00d8b93b39a5'),
    ('Project F', 'Description for project F', '2024-06-01', '2024-11-15', GETDATE(), 3, '0ac1423e-f36b-1410-8361-00d8b93b39a5'),
    ('Project G', 'Project G details', '2024-07-08', '2024-12-31', GETDATE(), 1, '0fc1423e-f36b-1410-8361-00d8b93b39a5'),
    ('Project H', 'Project H description', '2024-08-15', '2025-01-15', GETDATE(), 2, '14c1423e-f36b-1410-8361-00d8b93b39a5'),
    ('Project I', 'Project I detailed description', '2024-09-22', '2025-02-28', GETDATE(), 3, '19c1423e-f36b-1410-8361-00d8b93b39a5'),
    ('Project J', 'Brief description of project J', '2024-10-10', '2025-03-15', GETDATE(), 1, '1ec1423e-f36b-1410-8361-00d8b93b39a5');

GO

---> Insert Data Into [UserProject]
INSERT INTO [UserProject]
    (UserID, ProjectID)
VALUES
    ('f1c0423e-f36b-1410-8361-00d8b93b39a5', 1),
    ('f6c0423e-f36b-1410-8361-00d8b93b39a5', 2),
    ('fbc0423e-f36b-1410-8361-00d8b93b39a5', 3),
    ('00c1423e-f36b-1410-8361-00d8b93b39a5', 4),
    ('05c1423e-f36b-1410-8361-00d8b93b39a5', 5),
    ('0ac1423e-f36b-1410-8361-00d8b93b39a5', 6),
    ('0fc1423e-f36b-1410-8361-00d8b93b39a5', 7),
    ('14c1423e-f36b-1410-8361-00d8b93b39a5', 8),
    ('19c1423e-f36b-1410-8361-00d8b93b39a5', 9),
    ('1ec1423e-f36b-1410-8361-00d8b93b39a5', 10);
GO

---> Insert Data Into [ProjectComment]
INSERT INTO [ProjectComment]
    (UserID, ProjectID, Description)
VALUES
    ('f1c0423e-f36b-1410-8361-00d8b93b39a5', 1, 'Great project!'),
    ('f6c0423e-f36b-1410-8361-00d8b93b39a5', 1, 'Looking forward to the results.'),
    ('fbc0423e-f36b-1410-8361-00d8b93b39a5', 2, 'Interesting project.'),
    ('00c1423e-f36b-1410-8361-00d8b93b39a5', 2, 'Wishing you success.'),
    ('05c1423e-f36b-1410-8361-00d8b93b39a5', 3, 'Keep up the good work.'),
    ('0ac1423e-f36b-1410-8361-00d8b93b39a5', 3, 'Impressive efforts.'),
    ('0fc1423e-f36b-1410-8361-00d8b93b39a5', 4, 'Nice project plan.'),
    ('14c1423e-f36b-1410-8361-00d8b93b39a5', 5, 'Good luck with the project.'),
    ('19c1423e-f36b-1410-8361-00d8b93b39a5', 6, 'Well organized project.'),
    ('1ec1423e-f36b-1410-8361-00d8b93b39a5', 7, 'Excited to see the outcomes.');

GO

---> Insert Data Into [TypeIssue]
INSERT INTO [TypeIssue]
    (Name, Description, Image, DateCreated)
VALUES
    ('Bug', 'Functional issue', '/images/bug.jpg', GETDATE()),
    ('Feature Request', 'Request for new feature', '/images/feature.jpg', GETDATE()),
    ('Enhancement', 'Improvement suggestion', '/images/enhancement.jpg', GETDATE()),
    ('Task', 'Specific task to be done', '/images/task.jpg', GETDATE()),
    ('Documentation', 'Issue related to documentation', '/images/documentation.jpg', GETDATE()),
    ('Other', 'Other type of issue', '/images/other.jpg', GETDATE()),
    ('Critical', 'Critical issue', '/images/critical.jpg', GETDATE()),
    ('Support', 'Support-related issue', '/images/support.jpg', GETDATE()),
    ('Infrastructure', 'Infrastructure issue', '/images/infrastructure.jpg', GETDATE()),
    ('Performance', 'Performance-related issue', '/images/performance.jpg', GETDATE());
GO

---> Insert Data Into [Issue]
INSERT INTO [Issue]
    (Name, Description, DateCreated, StateID, TypeIssueID, UserID, ProjectID)
VALUES
    ('Issue 1', 'Description of issue 1', GETDATE(), 1, 1, 'f1c0423e-f36b-1410-8361-00d8b93b39a5', 1),
    ('Issue 2', 'Detailed description of issue 2', GETDATE(), 2, 2, 'f6c0423e-f36b-1410-8361-00d8b93b39a5', 2),
    ('Issue 3', 'Brief description of issue 3', GETDATE(), 1, 3, 'fbc0423e-f36b-1410-8361-00d8b93b39a5', 3),
    ('Issue 4', 'Issue 4 details', GETDATE(), 2, 4, '00c1423e-f36b-1410-8361-00d8b93b39a5', 4),
    ('Issue 5', 'Issue 5 description', GETDATE(), 1, 5, '05c1423e-f36b-1410-8361-00d8b93b39a5', 5),
    ('Issue 6', 'Detailed information for issue 6', GETDATE(), 2, 6, '0ac1423e-f36b-1410-8361-00d8b93b39a5', 6),
    ('Issue 7', 'Short description of issue 7', GETDATE(), 1, 7, '0fc1423e-f36b-1410-8361-00d8b93b39a5', 7),
    ('Issue 8', 'Issue 8 details here', GETDATE(), 2, 8, '14c1423e-f36b-1410-8361-00d8b93b39a5', 8),
    ('Issue 9', 'Description of issue 9', GETDATE(), 1, 9, '19c1423e-f36b-1410-8361-00d8b93b39a5', 9),
    ('Issue 10', 'Brief description of issue 10', GETDATE(), 2, 10, '1ec1423e-f36b-1410-8361-00d8b93b39a5', 10);

GO

---> Insert Data Into [IssueComment]
INSERT INTO [IssueComment]
    (UserID, IssueID, Description)
VALUES
    ('f1c0423e-f36b-1410-8361-00d8b93b39a5', 1, 'Hope this gets resolved soon.'),
    ('f6c0423e-f36b-1410-8361-00d8b93b39a5', 1, 'Looking forward to the fix.'),
    ('fbc0423e-f36b-1410-8361-00d8b93b39a5', 2, 'Great details provided.'),
    ('00c1423e-f36b-1410-8361-00d8b93b39a5', 2, 'Thanks for reporting.'),
    ('05c1423e-f36b-1410-8361-00d8b93b39a5', 3, 'Let us know how we can help.'),
    ('0ac1423e-f36b-1410-8361-00d8b93b39a5', 3, 'You can count on our support.'),
    ('0fc1423e-f36b-1410-8361-00d8b93b39a5', 4, 'Keep us updated on progress.'),
    ('14c1423e-f36b-1410-8361-00d8b93b39a5', 5, 'This needs attention.'),
    ('19c1423e-f36b-1410-8361-00d8b93b39a5', 6, 'We appreciate your input.'),
    ('1ec1423e-f36b-1410-8361-00d8b93b39a5', 7, 'Happy to assist with resolving.');
GO

---> Insert Data Into [Event]
INSERT INTO [Event]
    (StartDate, EndDate, Description, UserID, IssueID)
VALUES
    ('2024-06-01 09:00:00', '2024-06-01 17:00:00', 'Event for Project A', 'f1c0423e-f36b-1410-8361-00d8b93b39a5', 1),
    ('2024-06-02 09:00:00', '2024-06-02 17:00:00', 'Event for Project B', 'f6c0423e-f36b-1410-8361-00d8b93b39a5', 2),
    ('2024-06-03 09:00:00', '2024-06-03 17:00:00', 'Event for Project C', 'fbc0423e-f36b-1410-8361-00d8b93b39a5', 3),
    ('2024-06-04 09:00:00', '2024-06-04 17:00:00', 'Event for Project D', '00c1423e-f36b-1410-8361-00d8b93b39a5', 4);
GO
