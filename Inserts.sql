-- Use the DataBase ToDoDB
USE ToDoDB;
GO

---------------------------------------- INSERT DATA ---------------------------------------

---> Insert Data Into [User]
INSERT INTO [User]
    (UserID, Name, LastName, Age, PhoneNumber, UserName, Password, Email, Image, Country)
VALUES
    ('f1c0423e-f36b-1410-8361-00d8b93b39a5', 'John', 'Doe', 30, '123-456-7890', 'johndoe', 'password123', 'john.doe@email.com', '', 'USA'),
    ('f6c0423e-f36b-1410-8361-00d8b93b39a5', 'Jane', 'Smith', 25, '987-654-3210', 'janesmith', 'letmein', 'jane.smith@email.com', '', 'Canada'),
    ('fbc0423e-f36b-1410-8361-00d8b93b39a5', 'Michael', 'Johnson', 35, '456-789-0123', 'mjohnson', 'securepass', 'michael.johnson@email.com', '', 'Australia'),
    ('00c1423e-f36b-1410-8361-00d8b93b39a5', 'Emily', 'Brown', 28, '789-012-3456', 'emilyb', 'strongpwd', 'emily.brown@email.com', '', 'UK'),
    ('05c1423e-f36b-1410-8361-00d8b93b39a5', 'David', 'Martinez', 32, '234-567-8901', 'dmartinez', 'dm1234', 'david.martinez@email.com', '', 'Mexico'),
    ('0ac1423e-f36b-1410-8361-00d8b93b39a5', 'Sarah', 'Garcia', 29, '567-890-1234', 'sarahg', 'passw0rd', 'sarah.garcia@email.com', '', 'Spain'),
    ('0fc1423e-f36b-1410-8361-00d8b93b39a5', 'Chris', 'Wilson', 31, '890-123-4567', 'cwilson', 'chrispass', 'chris.wilson@email.com', '', 'Germany'),
    ('14c1423e-f36b-1410-8361-00d8b93b39a5', 'Jessica', 'Lee', 27, '345-678-9012', 'jessicalee', 'jlee123', 'jessica.lee@email.com', '', 'Japan'),
    ('19c1423e-f36b-1410-8361-00d8b93b39a5', 'Kevin', 'Clark', 33, '678-901-2345', 'kclark', 'kevinc', 'kevin.clark@email.com', '', 'Brazil'),
    ('1ec1423e-f36b-1410-8361-00d8b93b39a5', 'Amanda', 'Lopez', 26, '901-234-5678', 'amandal', 'alopez', 'amanda.lopez@email.com', '', 'Argentina');
GO

---> Insert Data Into [State]
INSERT INTO [State]
    (Name)
VALUES
    ('Open'),
    ('In Progress'),
    ('Closed'),
    ('On Hold'),
    ('Deleted');
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
    ('Project J', 'Brief description of project J', '2024-10-10', '2025-03-15', GETDATE(), 1, '1ec1423e-f36b-1410-8361-00d8b93b39a5'),
    ('Project K', 'Project K details', '2024-11-18', '2025-04-30', GETDATE(), 2, 'f1c0423e-f36b-1410-8361-00d8b93b39a5'),
    ('Project L', 'Project L description', '2024-12-05', '2025-05-15', GETDATE(), 3, 'f6c0423e-f36b-1410-8361-00d8b93b39a5'),
    ('Project M', 'Project M detailed description', '2025-01-02', '2025-06-30', GETDATE(), 1, 'fbc0423e-f36b-1410-8361-00d8b93b39a5'),
    ('Project N', 'Description for project N', '2025-02-20', '2025-07-31', GETDATE(), 2, '00c1423e-f36b-1410-8361-00d8b93b39a5'),
    ('Project O', 'Project O details', '2025-03-10', '2025-08-15', GETDATE(), 3, '05c1423e-f36b-1410-8361-00d8b93b39a5'),
    ('Project P', 'Project P description', '2025-04-15', '2025-09-30', GETDATE(), 1, '0ac1423e-f36b-1410-8361-00d8b93b39a5'),
    ('Project Q', 'Project Q detailed description', '2025-05-01', '2025-10-31', GETDATE(), 2, '0fc1423e-f36b-1410-8361-00d8b93b39a5'),
    ('Project R', 'Brief description of project R', '2025-06-12', '2025-11-30', GETDATE(), 3, '14c1423e-f36b-1410-8361-00d8b93b39a5'),
    ('Project S', 'Project S details', '2025-07-08', '2025-12-31', GETDATE(), 1, '19c1423e-f36b-1410-8361-00d8b93b39a5'),
    ('Project T', 'Project T description', '2025-08-15', '2026-01-31', GETDATE(), 2, '1ec1423e-f36b-1410-8361-00d8b93b39a5'),
    ('Project U', 'Project U detailed description', '2025-09-22', '2026-02-28', GETDATE(), 3, 'f1c0423e-f36b-1410-8361-00d8b93b39a5'),
    ('Project V', 'Description for project V', '2025-10-10', '2026-03-15', GETDATE(), 1, 'f6c0423e-f36b-1410-8361-00d8b93b39a5'),
    ('Project W', 'Project W details', '2025-11-18', '2026-04-30', GETDATE(), 2, 'fbc0423e-f36b-1410-8361-00d8b93b39a5'),
    ('Project X', 'Project X description', '2025-12-05', '2026-05-15', GETDATE(), 3, '00c1423e-f36b-1410-8361-00d8b93b39a5'),
    ('Project Y', 'Project Y detailed description', '2026-01-02', '2026-06-30', GETDATE(), 1, '05c1423e-f36b-1410-8361-00d8b93b39a5'),
    ('Project Z', 'Brief description of project Z', '2026-02-20', '2026-07-31', GETDATE(), 2, '0ac1423e-f36b-1410-8361-00d8b93b39a5');
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
    ('1ec1423e-f36b-1410-8361-00d8b93b39a5', 10),
    ('f1c0423e-f36b-1410-8361-00d8b93b39a5', 11),
    ('f6c0423e-f36b-1410-8361-00d8b93b39a5', 12),
    ('fbc0423e-f36b-1410-8361-00d8b93b39a5', 13),
    ('00c1423e-f36b-1410-8361-00d8b93b39a5', 14),
    ('05c1423e-f36b-1410-8361-00d8b93b39a5', 15),
    ('0ac1423e-f36b-1410-8361-00d8b93b39a5', 16),
    ('0fc1423e-f36b-1410-8361-00d8b93b39a5', 17),
    ('14c1423e-f36b-1410-8361-00d8b93b39a5', 18),
    ('19c1423e-f36b-1410-8361-00d8b93b39a5', 19),
    ('1ec1423e-f36b-1410-8361-00d8b93b39a5', 20),
    ('f1c0423e-f36b-1410-8361-00d8b93b39a5', 21),
    ('f6c0423e-f36b-1410-8361-00d8b93b39a5', 22),
    ('fbc0423e-f36b-1410-8361-00d8b93b39a5', 23),
    ('00c1423e-f36b-1410-8361-00d8b93b39a5', 24),
    ('05c1423e-f36b-1410-8361-00d8b93b39a5', 25),
    ('0ac1423e-f36b-1410-8361-00d8b93b39a5', 26),
    ('0fc1423e-f36b-1410-8361-00d8b93b39a5', 1),
    ('14c1423e-f36b-1410-8361-00d8b93b39a5', 2),
    ('19c1423e-f36b-1410-8361-00d8b93b39a5', 3),
    ('1ec1423e-f36b-1410-8361-00d8b93b39a5', 4);
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
    ('1ec1423e-f36b-1410-8361-00d8b93b39a5', 7, 'Excited to see the outcomes.'),
    ('f1c0423e-f36b-1410-8361-00d8b93b39a5', 8, 'This looks promising.'),
    ('f6c0423e-f36b-1410-8361-00d8b93b39a5', 8, 'Impressive work so far.'),
    ('fbc0423e-f36b-1410-8361-00d8b93b39a5', 9, 'Interesting approach.'),
    ('00c1423e-f36b-1410-8361-00d8b93b39a5', 9, 'Looking forward to updates.'),
    ('05c1423e-f36b-1410-8361-00d8b93b39a5', 10, 'Great initiative!'),
    ('0ac1423e-f36b-1410-8361-00d8b93b39a5', 10, 'Well executed project.'),
    ('0fc1423e-f36b-1410-8361-00d8b93b39a5', 11, 'Excellent planning.'),
    ('14c1423e-f36b-1410-8361-00d8b93b39a5', 12, 'Best of luck!'),
    ('19c1423e-f36b-1410-8361-00d8b93b39a5', 13, 'Keep up the good work.'),
    ('1ec1423e-f36b-1410-8361-00d8b93b39a5', 14, 'Looking forward to the results.'),
    ('f1c0423e-f36b-1410-8361-00d8b93b39a5', 15, 'Impressive efforts.'),
    ('f6c0423e-f36b-1410-8361-00d8b93b39a5', 16, 'Nice project plan.'),
    ('fbc0423e-f36b-1410-8361-00d8b93b39a5', 17, 'Good luck with the project.'),
    ('00c1423e-f36b-1410-8361-00d8b93b39a5', 18, 'Well organized project.'),
    ('05c1423e-f36b-1410-8361-00d8b93b39a5', 19, 'Excited to see the outcomes.'),
    ('0ac1423e-f36b-1410-8361-00d8b93b39a5', 20, 'This looks promising.'),
    ('0fc1423e-f36b-1410-8361-00d8b93b39a5', 21, 'Impressive work so far.'),
    ('14c1423e-f36b-1410-8361-00d8b93b39a5', 22, 'Interesting approach.'),
    ('19c1423e-f36b-1410-8361-00d8b93b39a5', 23, 'Looking forward to updates.'),
    ('1ec1423e-f36b-1410-8361-00d8b93b39a5', 24, 'Great initiative!'),
    ('f1c0423e-f36b-1410-8361-00d8b93b39a5', 25, 'Well executed project.'),
    ('f6c0423e-f36b-1410-8361-00d8b93b39a5', 26, 'Excellent planning.'),
    ('fbc0423e-f36b-1410-8361-00d8b93b39a5', 1, 'Best of luck!'),
    ('00c1423e-f36b-1410-8361-00d8b93b39a5', 2, 'Keep up the good work.'),
    ('05c1423e-f36b-1410-8361-00d8b93b39a5', 3, 'Looking forward to the results.'),
    ('0ac1423e-f36b-1410-8361-00d8b93b39a5', 4, 'Impressive efforts.');
GO


---> Insert Data Into [TypeIssue]
INSERT INTO [TypeIssue]
    (Name, Description, Image, DateCreated)
VALUES
    ('Bug', 'Functional issue', '', GETDATE()),
    ('Feature Request', 'Request for new feature', '', GETDATE()),
    ('Enhancement', 'Improvement suggestion', '', GETDATE()),
    ('Task', 'Specific task to be done', '', GETDATE()),
    ('Documentation', 'Issue related to documentation', '', GETDATE()),
    ('Other', 'Other type of issue', '', GETDATE()),
    ('Critical', 'Critical issue', '', GETDATE()),
    ('Support', 'Support-related issue', '', GETDATE()),
    ('Infrastructure', 'Infrastructure issue', '', GETDATE()),
    ('Performance', 'Performance-related issue', '', GETDATE()),
    ('Bug', 'Functional issue', '', GETDATE()),
    ('Feature Request', 'Request for new feature', '', GETDATE()),
    ('Enhancement', 'Improvement suggestion', '', GETDATE()),
    ('Task', 'Specific task to be done', '', GETDATE()),
    ('Documentation', 'Issue related to documentation', '', GETDATE()),
    ('Other', 'Other type of issue', '', GETDATE()),
    ('Critical', 'Critical issue', '', GETDATE()),
    ('Support', 'Support-related issue', '', GETDATE()),
    ('Infrastructure', 'Infrastructure issue', '', GETDATE()),
    ('Performance', 'Performance-related issue', '', GETDATE());
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
    ('Issue 10', 'Brief description of issue 10', GETDATE(), 2, 10, '1ec1423e-f36b-1410-8361-00d8b93b39a5', 10),
    ('Issue 11', 'Description of issue 11', GETDATE(), 1, 1, 'f1c0423e-f36b-1410-8361-00d8b93b39a5', 11),
    ('Issue 12', 'Detailed description of issue 12', GETDATE(), 2, 2, 'f6c0423e-f36b-1410-8361-00d8b93b39a5', 12),
    ('Issue 13', 'Brief description of issue 13', GETDATE(), 1, 3, 'fbc0423e-f36b-1410-8361-00d8b93b39a5', 13),
    ('Issue 14', 'Issue 14 details', GETDATE(), 2, 4, '00c1423e-f36b-1410-8361-00d8b93b39a5', 14),
    ('Issue 15', 'Issue 15 description', GETDATE(), 1, 5, '05c1423e-f36b-1410-8361-00d8b93b39a5', 15),
    ('Issue 16', 'Detailed information for issue 16', GETDATE(), 2, 6, '0ac1423e-f36b-1410-8361-00d8b93b39a5', 16),
    ('Issue 17', 'Short description of issue 17', GETDATE(), 1, 7, '0fc1423e-f36b-1410-8361-00d8b93b39a5', 17),
    ('Issue 18', 'Issue 18 details here', GETDATE(), 2, 8, '14c1423e-f36b-1410-8361-00d8b93b39a5', 18),
    ('Issue 19', 'Description of issue 19', GETDATE(), 1, 9, '19c1423e-f36b-1410-8361-00d8b93b39a5', 19),
    ('Issue 20', 'Brief description of issue 20', GETDATE(), 2, 10, '1ec1423e-f36b-1410-8361-00d8b93b39a5', 20);
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
    ('1ec1423e-f36b-1410-8361-00d8b93b39a5', 7, 'Happy to assist with resolving.'),
    ('f1c0423e-f36b-1410-8361-00d8b93b39a5', 8, 'Hope this gets resolved soon.'),
    ('f6c0423e-f36b-1410-8361-00d8b93b39a5', 9, 'Looking forward to the fix.'),
    ('fbc0423e-f36b-1410-8361-00d8b93b39a5', 10, 'Great details provided.'),
    ('00c1423e-f36b-1410-8361-00d8b93b39a5', 11, 'Thanks for reporting.'),
    ('05c1423e-f36b-1410-8361-00d8b93b39a5', 12, 'Let us know how we can help.'),
    ('0ac1423e-f36b-1410-8361-00d8b93b39a5', 13, 'You can count on our support.'),
    ('0fc1423e-f36b-1410-8361-00d8b93b39a5', 14, 'Keep us updated on progress.'),
    ('14c1423e-f36b-1410-8361-00d8b93b39a5', 15, 'This needs attention.'),
    ('19c1423e-f36b-1410-8361-00d8b93b39a5', 16, 'We appreciate your input.'),
    ('1ec1423e-f36b-1410-8361-00d8b93b39a5', 17, 'Happy to assist with resolving.'),
    ('f1c0423e-f36b-1410-8361-00d8b93b39a5', 18, 'Hope this gets resolved soon.'),
    ('f6c0423e-f36b-1410-8361-00d8b93b39a5', 19, 'Looking forward to the fix.'),
    ('fbc0423e-f36b-1410-8361-00d8b93b39a5', 20, 'Great details provided.');
GO


---> Insert Data Into [Event]
INSERT INTO [Event]
    (StartDate, EndDate, Description, UserID, IssueID)
VALUES
    ('2024-06-01 09:00:00', '2024-06-01 17:00:00', 'Event for Project A', 'f1c0423e-f36b-1410-8361-00d8b93b39a5', 1),
    ('2024-06-02 09:00:00', '2024-06-02 17:00:00', 'Event for Project B', 'f6c0423e-f36b-1410-8361-00d8b93b39a5', 2),
    ('2024-06-03 09:00:00', '2024-06-03 17:00:00', 'Event for Project C', 'fbc0423e-f36b-1410-8361-00d8b93b39a5', 3),
    ('2024-06-04 09:00:00', '2024-06-04 17:00:00', 'Event for Project D', '00c1423e-f36b-1410-8361-00d8b93b39a5', 4),
    ('2024-06-05 09:00:00', '2024-06-05 17:00:00', 'Event for Project E', '05c1423e-f36b-1410-8361-00d8b93b39a5', 5),
    ('2024-06-06 09:00:00', '2024-06-06 17:00:00', 'Event for Project F', '0ac1423e-f36b-1410-8361-00d8b93b39a5', 6),
    ('2024-06-07 09:00:00', '2024-06-07 17:00:00', 'Event for Project G', '0fc1423e-f36b-1410-8361-00d8b93b39a5', 7),
    ('2024-06-08 09:00:00', '2024-06-08 17:00:00', 'Event for Project H', '14c1423e-f36b-1410-8361-00d8b93b39a5', 8),
    ('2024-06-09 09:00:00', '2024-06-09 17:00:00', 'Event for Project I', '19c1423e-f36b-1410-8361-00d8b93b39a5', 9),
    ('2024-06-10 09:00:00', '2024-06-10 17:00:00', 'Event for Project J', '1ec1423e-f36b-1410-8361-00d8b93b39a5', 10),
    ('2024-06-11 09:00:00', '2024-06-11 17:00:00', 'Event for Project K', 'f1c0423e-f36b-1410-8361-00d8b93b39a5', 11),
    ('2024-06-12 09:00:00', '2024-06-12 17:00:00', 'Event for Project L', 'f6c0423e-f36b-1410-8361-00d8b93b39a5', 12),
    ('2024-06-13 09:00:00', '2024-06-13 17:00:00', 'Event for Project M', 'fbc0423e-f36b-1410-8361-00d8b93b39a5', 13),
    ('2024-06-14 09:00:00', '2024-06-14 17:00:00', 'Event for Project N', '00c1423e-f36b-1410-8361-00d8b93b39a5', 14),
    ('2024-06-15 09:00:00', '2024-06-15 17:00:00', 'Event for Project O', '05c1423e-f36b-1410-8361-00d8b93b39a5', 15),
    ('2024-06-16 09:00:00', '2024-06-16 17:00:00', 'Event for Project P', '0ac1423e-f36b-1410-8361-00d8b93b39a5', 16),
    ('2024-06-17 09:00:00', '2024-06-17 17:00:00', 'Event for Project Q', '0fc1423e-f36b-1410-8361-00d8b93b39a5', 17),
    ('2024-06-18 09:00:00', '2024-06-18 17:00:00', 'Event for Project R', '14c1423e-f36b-1410-8361-00d8b93b39a5', 18),
    ('2024-06-19 09:00:00', '2024-06-19 17:00:00', 'Event for Project S', '19c1423e-f36b-1410-8361-00d8b93b39a5', 19),
    ('2024-06-20 09:00:00', '2024-06-20 17:00:00', 'Event for Project T', '1ec1423e-f36b-1410-8361-00d8b93b39a5', 20),
    ('2024-06-21 09:00:00', '2024-06-21 17:00:00', 'Event for Project U', 'f1c0423e-f36b-1410-8361-00d8b93b39a5', 1),
    ('2024-06-22 09:00:00', '2024-06-22 17:00:00', 'Event for Project V', 'f6c0423e-f36b-1410-8361-00d8b93b39a5', 2),
    ('2024-06-23 09:00:00', '2024-06-23 17:00:00', 'Event for Project W', 'fbc0423e-f36b-1410-8361-00d8b93b39a5', 3),
    ('2024-06-24 09:00:00', '2024-06-24 17:00:00', 'Event for Project X', '00c1423e-f36b-1410-8361-00d8b93b39a5', 4),
    ('2024-06-25 09:00:00', '2024-06-25 17:00:00', 'Event for Project Y', '05c1423e-f36b-1410-8361-00d8b93b39a5', 5),
    ('2024-06-26 09:00:00', '2024-06-26 17:00:00', 'Event for Project Z', '0ac1423e-f36b-1410-8361-00d8b93b39a5', 6),
    ('2024-06-27 09:00:00', '2024-06-27 17:00:00', 'Event for Project AA', '0fc1423e-f36b-1410-8361-00d8b93b39a5', 7),
    ('2024-06-28 09:00:00', '2024-06-28 17:00:00', 'Event for Project AB', '14c1423e-f36b-1410-8361-00d8b93b39a5', 8),
    ('2024-06-29 09:00:00', '2024-06-29 17:00:00', 'Event for Project AC', '19c1423e-f36b-1410-8361-00d8b93b39a5', 9),
    ('2024-06-30 09:00:00', '2024-06-30 17:00:00', 'Event for Project AD', '1ec1423e-f36b-1410-8361-00d8b93b39a5', 1);
GO

