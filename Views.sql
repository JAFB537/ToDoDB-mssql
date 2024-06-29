---> Use the DataBase ToDoDB
USE ToDoDB;
GO

--------------------------------------- DROP VIEWS ---------------------------------------

IF EXISTS (SELECT *
FROM sys.views
WHERE name = 'vw_Users')
BEGIN
    DROP VIEW vw_Users;
END
GO

IF EXISTS (SELECT *
FROM sys.views
WHERE name = 'vw_State')
BEGIN
    DROP VIEW vw_State;
END
GO

IF EXISTS (SELECT *
FROM sys.views
WHERE name = 'vw_Project')
BEGIN
    DROP VIEW vw_Project;
END
GO

IF EXISTS (SELECT *
FROM sys.views
WHERE name = 'vw_ProjectComment')
BEGIN
    DROP VIEW vw_ProjectComment;
END
GO

IF EXISTS (SELECT *
FROM sys.views
WHERE name = 'vw_TypeIssue')
BEGIN
    DROP VIEW vw_TypeIssue;
END
GO

IF EXISTS (SELECT *
FROM sys.views
WHERE name = 'vw_Issue')
BEGIN
    DROP VIEW vw_Issue;
END
GO

IF EXISTS (SELECT *
FROM sys.views
WHERE name = 'vw_IssueComment')
BEGIN
    DROP VIEW vw_IssueComment;
END
GO

IF EXISTS (SELECT *
FROM sys.views
WHERE name = 'vw_Event_User')
BEGIN
    DROP VIEW vw_Event_User;
END
GO

--------------------------------------- CREATE VIEWS ---------------------------------------

---> Create View vw_Users
CREATE VIEW vw_Users
AS
    SELECT u.UserID, u.Name, u.LastName, u.Age, u.PhoneNumber, u.UserName, u.Email, u.Image, u.Country
    FROM [User] u;
GO

---> Create View vw_State
CREATE VIEW vw_State
AS
    SELECT StateID, Name
    FROM [State];
GO

---> Create View vw_Project
CREATE VIEW vw_Project
AS
    SELECT p.ProjectID, p.Name, p.Description, p.StartDate, p.EndDate, p.DateCreated, s.Name AS StateName
    FROM [Project] p
        INNER JOIN [State] s ON p.StateID = s.StateID;
GO

---> Create View vw_ProjectComment
CREATE VIEW vw_ProjectComment
AS
    SELECT pc.Description, pc.UserID, u.Name + ' ' + u.LastName AS FullName, u.UserName, u.Email, pc.ProjectID, p.Name AS ProjectName
    FROM [ProjectComment] pc
        INNER JOIN [User] u ON pc.UserID = u.UserID
        INNER JOIN [Project] p ON pc.ProjectID = p.ProjectID;
GO

---> Create View vw_TypeIssue
CREATE VIEW vw_TypeIssue
AS
    SELECT TypeIssueID, Name AS TypeName, Description AS TypeDescription, Image AS TypeImage, DateCreated AS TypeDateCreated
    FROM [TypeIssue];
GO

---> Create View vw_Issue
CREATE VIEW vw_Issue
AS
    SELECT i.IssueID, i.Name AS IssueName, i.Description AS IssueDescription, i.DateCreated AS IssueDateCreated, u.Name AS UserName, p.Name AS ProjectName, s.Name AS StateName
    FROM [Issue] i
        INNER JOIN [User] u ON i.UserID = u.UserID
        INNER JOIN [Project] p ON i.ProjectID = p.ProjectID
        INNER JOIN [State] s ON i.StateID = s.StateID;
GO

---> Create View vw_IssueComment
CREATE VIEW vw_IssueComment
AS
    SELECT ic.Description, ic.UserID, u.Name + ' ' + u.LastName AS FullName, ic.IssueID, i.Name as IssueName
    FROM [IssueComment] ic
        INNER JOIN [User] u ON ic.UserID = u.UserID
        INNER JOIN [Issue] i ON ic.IssueID = i.IssueID;
GO

---> Create View vw_Event_User
CREATE VIEW vw_Event_User
AS
    SELECT e.EventID, e.StartDate, e.EndDate, e.Description AS EventDescription, u.Name AS UserName, i.IssueId, i.Description
    FROM [Event] e
        INNER JOIN [User] u ON e.UserID = u.UserID
        INNER JOIN [Issue] i ON e.IssueID = i.IssueID;
GO
