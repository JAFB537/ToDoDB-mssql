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
WHERE name = 'vw_Event')
BEGIN
    DROP VIEW vw_Event;
END
GO

IF EXISTS (SELECT *
FROM sys.views
WHERE name = 'vw_User_Project')
BEGIN
    DROP VIEW vw_User_Project;
END
GO

--------------------------------------- CREATE VIEWS ---------------------------------------

---> Create View vw_Users
CREATE VIEW vw_Users
AS
    SELECT
        UserID,
        Name,
        LastName,
        Age,
        PhoneNumber,
        UserName,
        Email,
        Image,
        Country
    FROM
        [User];
GO

---> Create View vw_State
CREATE VIEW vw_State
AS
    SELECT
        s.StateID,
        s.Name
    FROM
        State s

GO

---> Create View vw_Project
CREATE VIEW vw_Project
AS
    SELECT
        p.ProjectID,
        p.Name AS ProjectName,
        p.Description AS ProjectDescription,
        FORMAT(p.StartDate, 'dd/MM/yyyy HH:mm:ss') AS ProjectStartDate,
        FORMAT(p.EndDate, 'dd/MM/yyyy HH:mm:ss') AS ProjectEndDate,
        FORMAT(p.DateCreated, 'dd/MM/yyyy HH:mm:ss') AS ProjectDateCreated,
        s.StateID,
        s.Name AS StateName,
        u.UserID,
        u.Name AS UserName,
        u.LastName AS UserLastName,
        u.Age AS UserAge,
        u.PhoneNumber AS UserPhoneNumber,
        u.UserName AS UserUserName,
        u.Email AS UserEmail,
        u.Image AS UserImage,
        u.Country AS UserCountry
    FROM
        Project p
        INNER JOIN
        State s ON p.StateID = s.StateID
        INNER JOIN
        [User] u ON p.UserID = u.UserID;
GO

---> Create View vw_ProjectComment
CREATE VIEW vw_ProjectComment
AS
    SELECT
        pc.ProjectCommentID,
        pc.Description AS CommentDescription,
        pc.UserID AS CommentUserID,
        pc.ProjectID AS CommentProjectID,
        u.UserID,
        u.Name AS UserName,
        u.LastName AS UserLastName,
        u.Age AS UserAge,
        u.PhoneNumber AS UserPhoneNumber,
        u.UserName AS UserUserName,
        u.Email AS UserEmail,
        u.Image AS UserImage,
        u.Country AS UserCountry,
        p.ProjectID,
        p.Name AS ProjectName,
        p.Description AS ProjectDescription,
        p.StartDate AS ProjectStartDate,
        p.EndDate AS ProjectEndDate,
        p.DateCreated AS ProjectDateCreated,
        s.StateID,
        s.Name AS StateName
    FROM
        ProjectComment pc
        INNER JOIN
        [User] u ON pc.UserID = u.UserID
        INNER JOIN
        Project p ON pc.ProjectID = p.ProjectID
        INNER JOIN
        State s ON p.StateID = s.StateID;
GO

---> Create View vw_TypeIssue
CREATE VIEW vw_TypeIssue
AS
    SELECT
        TypeIssueID,
        Name,
        Description,
        Image,
        DateCreated
    FROM
        TypeIssue;
GO

---> Create View vw_Issue
CREATE VIEW vw_Issue
AS
    SELECT
        i.IssueID,
        i.Name AS IssueName,
        i.Description AS IssueDescription,
        FORMAT(i.DateCreated, 'dd/MM/yyyy HH:mm:ss')  AS IssueDateCreated,
        s.StateID,
        s.Name AS StateName,
        ti.TypeIssueID,
        ti.Name AS TypeIssueName,
        p.ProjectID,
        p.Name AS ProjectName,
        u.UserID,
        u.Name AS UserName,
        u.LastName AS UserLastName
    FROM
        Issue i
        INNER JOIN
        State s ON i.StateID = s.StateID
        INNER JOIN
        TypeIssue ti ON i.TypeIssueID = ti.TypeIssueID
        INNER JOIN
        Project p ON i.ProjectID = p.ProjectID
        INNER JOIN
        [User] u ON i.UserID = u.UserID;
GO

---> Create View vw_IssueComment
CREATE VIEW vw_IssueComment
AS
    SELECT
        ic.IssueCommentID,
        ic.Description AS CommentDescription,
        ic.UserID AS CommentUserID,
        ic.IssueID AS CommentIssueID,
        u.UserID,
        u.Name AS UserName,
        u.LastName AS UserLastName,
        u.Age AS UserAge,
        u.PhoneNumber AS UserPhoneNumber,
        u.UserName AS UserUserName,
        u.Email AS UserEmail,
        u.Image AS UserImage,
        u.Country AS UserCountry,
        i.IssueID,
        i.Name AS IssueName,
        i.Description AS IssueDescription,
        FORMAT(i.DateCreated, 'dd/MM/yyyy HH:mm:ss') AS IssueDateCreated,
        s.StateID,
        s.Name AS StateName,
        ti.TypeIssueID,
        ti.Name AS TypeIssueName,
        p.ProjectID,
        p.Name AS ProjectName,
        p.Description AS ProjectDescription,
        FORMAT(p.StartDate, 'dd/MM/yyyy HH:mm:ss') AS ProjectStartDate,
        FORMAT(p.EndDate, 'dd/MM/yyyy HH:mm:ss') AS ProjectEndDate,
        FORMAT(p.DateCreated, 'dd/MM/yyyy HH:mm:ss') AS ProjectDateCreated
    FROM
        IssueComment ic
        INNER JOIN
        [User] u ON ic.UserID = u.UserID
        INNER JOIN
        Issue i ON ic.IssueID = i.IssueID
        INNER JOIN
        State s ON i.StateID = s.StateID
        INNER JOIN
        TypeIssue ti ON i.TypeIssueID = ti.TypeIssueID
        INNER JOIN
        Project p ON i.ProjectID = p.ProjectID;
GO

---> Create View vw_Event_User
CREATE VIEW vw_Event
AS
    SELECT
        e.EventID,
        FORMAT(e.StartDate, 'dd/MM/yyyy HH:mm:ss') AS StartDate,
        FORMAT(e.EndDate, 'dd/MM/yyyy HH:mm:ss') AS EndDate,
        e.Description as EventDescription,
        e.UserID as EventUserID,
        e.IssueID,
        u.Name as UserName,
        u.LastName as UserLastName,
        u.Age as UserAge,
        u.PhoneNumber as UserPhoneNumber,
        u.UserName as UserUserName,
        u.Email as UserEmail,
        u.Image as UserImage,
        u.Country as UserCountry,
        i.Name as IssueName,
        i.Description as IssueDescription,
        i.DateCreated as IssueDateCreated,
        i.StateID as IssueStateID,
        i.TypeIssueID as IssueTypeIssueID,
        i.ProjectID as IssueProjectID
    FROM [Event] e
        LEFT JOIN [User] u ON e.UserID = u.UserID
        LEFT JOIN [Issue] i ON e.IssueID = i.IssueID;
GO

---> Create View vw_User_Project
CREATE VIEW vw_User_Project
AS
    SELECT
        up.UserProjectID,
        up.UserID,
        u.Name AS UserName,
        u.LastName AS UserLastName,
        u.Age AS UserAge,
        u.PhoneNumber AS UserPhoneNumber,
        u.UserName AS UserUserName,
        u.Password AS UserPassword,
        u.Email AS UserEmail,
        u.Image AS UserImage,
        u.Country AS UserCountry,
        up.ProjectID,
        p.Name AS ProjectName,
        p.Description AS ProjectDescription,
        p.StartDate AS ProjectStartDate,
        p.EndDate AS ProjectEndDate,
        p.DateCreated AS ProjectDateCreated,
        ps.StateID AS ProjectStateID,
        ps.Name AS ProjectStateName
    FROM
        UserProject up
        INNER JOIN
        [User] u ON up.UserID = u.UserID
        INNER JOIN
        Project p ON up.ProjectID = p.ProjectID
        INNER JOIN
        State ps ON p.StateID = ps.StateID;
GO

-- Selects de las vistas en la base de datos ToDoDB

-- vw_Users
SELECT *
FROM vw_Users;

-- vw_State
SELECT *
FROM vw_State;

-- vw_Project
SELECT *
FROM vw_Project;

-- vw_ProjectComment
SELECT *
FROM vw_ProjectComment;

-- vw_TypeIssue
SELECT *
FROM vw_TypeIssue;

-- vw_Issue
SELECT *
FROM vw_Issue;

-- vw_IssueComment
SELECT *
FROM vw_IssueComment;

-- vw_Event
SELECT *
FROM vw_Event;

-- vw_User_Project
SELECT *
FROM vw_User_Project;