---> Use the DataBase ToDoDB
USE ToDoDB;
GO

---------------------------------------- INSERT DATA ---------------------------------------

---> Insert Data Into [User]
INSERT INTO [User] (Name, LastName, Age, PhoneNumber, UserName, Password, Email, Image, Country)
VALUES
('John', 'Doe', 30, '123-456-7890', 'johndoe', 'password123', 'john.doe@example.com', 'john.jpg', 'USA'),
('Jane', 'Smith', 25, '234-567-8901', 'janesmith', 'password123', 'jane.smith@example.com', 'jane.jpg', 'Canada'),
('Alice', 'Johnson', 28, '345-678-9012', 'alicej', 'password123', 'alice.j@example.com', 'alice.jpg', 'UK'),
('Bob', 'Brown', 35, '456-789-0123', 'bobb', 'password123', 'bob.brown@example.com', 'bob.jpg', 'Australia');
GO

---> Insert Data Into State]
INSERT INTO [State] (Name)
VALUES
('Open'),
('In Progress'),
('Closed'),
('On Hold');
GO

---> Insert Data Into [Project]
INSERT INTO [Project] (Name, Description, StartDate, EndDate, DateCreated, StateID)
VALUES
('Project A', 'Description of Project A', '2024-01-01', '2024-12-31', GETDATE(), 1),
('Project B', 'Description of Project B', '2024-02-01', '2024-11-30', GETDATE(), 2),
('Project C', 'Description of Project C', '2024-03-01', '2024-10-31', GETDATE(), 3),
('Project D', 'Description of Project D', '2024-04-01', '2024-09-30', GETDATE(), 4);
GO

---> Insert Data Into [UserProject]
INSERT INTO [UserProject] (UserID, ProjectID)
VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(1, 4),
(2, 3);
GO

---> Insert Data Into [ProjectComment]
INSERT INTO [ProjectComment] (UserID, ProjectID)
VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(1, 4),
(2, 3);
GO

---> Insert Data Into [TypeIssue]
INSERT INTO [TypeIssue] (Name, Description, Image, DateCreated)
VALUES
('Bug', 'An error or flaw in the software', 'bug.jpg', GETDATE()),
('Feature', 'A new feature request', 'feature.jpg', GETDATE()),
('Improvement', 'An improvement to existing functionality', 'improvement.jpg', GETDATE());
GO

---> Insert Data Into [Issue]
INSERT INTO [Issue] (Name, Description, DateCreated, StateID, TypeIssueID, UserID, ProjectID)
VALUES
('Issue 1', 'Description of Issue 1', GETDATE(), 1, 1, 1, 1),
('Issue 2', 'Description of Issue 2', GETDATE(), 2, 2, 2, 2),
('Issue 3', 'Description of Issue 3', GETDATE(), 3, 3, 3, 3),
('Issue 4', 'Description of Issue 4', GETDATE(), 4, 1, 4, 4);
GO

---> Insert Data Into [IssueComment]
INSERT INTO [IssueComment] (UserID, IssueID)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(1, 2),
(2, 3);
GO

---> Insert Data Into [Event]
INSERT INTO [Event] (StartDate, EndDate, Description, UserID)
VALUES
('2024-06-01 09:00:00', '2024-06-01 17:00:00', 'Event for Project A', 1),
('2024-06-02 09:00:00', '2024-06-02 17:00:00', 'Event for Project B', 2),
('2024-06-03 09:00:00', '2024-06-03 17:00:00', 'Event for Project C', 3),
('2024-06-04 09:00:00', '2024-06-04 17:00:00', 'Event for Project D', 4);
GO
