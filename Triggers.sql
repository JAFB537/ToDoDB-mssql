-- Use the DataBase ToDoDB
USE ToDoDB;
GO

---------------------------------------- DROP TRIGGERS ---------------------------------------

IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'trgAfterInsertUser')
BEGIN
    DROP TRIGGER trgAfterInsertUser;
END
GO

IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'trgAfterUpdateUser')
BEGIN
    DROP TRIGGER trgAfterUpdateUser;
END
GO

IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'trgAfterDeleteUser')
BEGIN
    DROP TRIGGER trgAfterDeleteUser;
END
GO

IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'trgAfterInsertState')
BEGIN
    DROP TRIGGER trgAfterInsertState;
END
GO

IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'trgAfterUpdateState')
BEGIN
    DROP TRIGGER trgAfterUpdateState;
END
GO

IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'trgAfterDeleteState')
BEGIN
    DROP TRIGGER trgAfterDeleteState;
END
GO

IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'trgAfterInsertProject')
BEGIN
    DROP TRIGGER trgAfterInsertProject;
END
GO

IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'trgAfterUpdateProject')
BEGIN
    DROP TRIGGER trgAfterUpdateProject;
END
GO

IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'trgAfterDeleteProject')
BEGIN
    DROP TRIGGER trgAfterDeleteProject;
END
GO

IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'trgAfterInsertUserProject')
BEGIN
    DROP TRIGGER trgAfterInsertUserProject;
END
GO

IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'trgAfterUpdateUserProject')
BEGIN
    DROP TRIGGER trgAfterUpdateUserProject;
END
GO

IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'trgAfterDeleteUserProject')
BEGIN
    DROP TRIGGER trgAfterDeleteUserProject;
END
GO

IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'trgAfterInsertProjectComment')
BEGIN
    DROP TRIGGER trgAfterInsertProjectComment;
END
GO

IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'trgAfterUpdateProjectComment')
BEGIN
    DROP TRIGGER trgAfterUpdateProjectComment;
END
GO

IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'trgAfterDeleteProjectComment')
BEGIN
    DROP TRIGGER trgAfterDeleteProjectComment;
END
GO

IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'trgAfterInsertTypeIssue')
BEGIN
    DROP TRIGGER trgAfterInsertTypeIssue;
END
GO

IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'trgAfterUpdateTypeIssue')
BEGIN
    DROP TRIGGER trgAfterUpdateTypeIssue;
END
GO

IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'trgAfterDeleteTypeIssue')
BEGIN
    DROP TRIGGER trgAfterDeleteTypeIssue;
END
GO

IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'trgAfterInsertIssue')
BEGIN
    DROP TRIGGER trgAfterInsertIssue;
END
GO

IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'trgAfterUpdateIssue')
BEGIN
    DROP TRIGGER trgAfterUpdateIssue;
END
GO

IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'trgAfterDeleteIssue')
BEGIN
    DROP TRIGGER trgAfterDeleteIssue;
END
GO

IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'trgAfterInsertIssueComment')
BEGIN
    DROP TRIGGER trgAfterInsertIssueComment;
END
GO

IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'trgAfterUpdateIssueComment')
BEGIN
    DROP TRIGGER trgAfterUpdateIssueComment;
END
GO

IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'trgAfterDeleteIssueComment')
BEGIN
    DROP TRIGGER trgAfterDeleteIssueComment;
END
GO

IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'trgAfterInsertEvent')
BEGIN
    DROP TRIGGER trgAfterInsertEvent;
END
GO

IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'trgAfterUpdateEvent')
BEGIN
    DROP TRIGGER trgAfterUpdateEvent;
END
GO

IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'trgAfterDeleteEvent')
BEGIN
    DROP TRIGGER trgAfterDeleteEvent;
END
GO

---------------------------------------- CREATE TRIGGERS ---------------------------------------

---> Trigger Insert [User]
CREATE TRIGGER trgAfterInsertUser
ON [User]
AFTER INSERT
AS
BEGIN
    INSERT INTO UserLog (Action, UserID, UserName, ActionDate)
    SELECT 'INSERT', inserted.UserID, inserted.UserName, GETDATE()
    FROM inserted;
END;
GO

---> Trigger Update [User]
CREATE TRIGGER trgAfterUpdateUser
ON [User]
AFTER UPDATE
AS
BEGIN
    INSERT INTO UserLog (Action, UserID, UserName, ActionDate)
    SELECT 'UPDATE', inserted.UserID, inserted.UserName, GETDATE()
    FROM inserted;
END;
GO

---> Trigger Delete [User]
CREATE TRIGGER trgAfterDeleteUser
ON [User]
AFTER DELETE
AS
BEGIN
    INSERT INTO UserLog (Action, UserID, UserName, ActionDate)
    SELECT 'DELETE', deleted.UserID, deleted.UserName, GETDATE()
    FROM deleted;
END;
GO

---> Trigger Insert State
CREATE TRIGGER trgAfterInsertState
ON [State]
AFTER INSERT
AS
BEGIN
    INSERT INTO StateLog (Action, StateID, StateName, ActionDate)
    SELECT 'INSERT', inserted.StateID, inserted.Name, GETDATE()
    FROM inserted;
END;
GO

---> Trigger Update State
CREATE TRIGGER trgAfterUpdateState
ON [State]
AFTER UPDATE
AS
BEGIN
    INSERT INTO StateLog (Action, StateID, StateName, ActionDate)
    SELECT 'UPDATE', inserted.StateID, inserted.Name, GETDATE()
    FROM inserted;
END;
GO

---> Trigger Delete State
CREATE TRIGGER trgAfterDeleteState
ON [State]
AFTER DELETE
AS
BEGIN
    INSERT INTO StateLog (Action, StateID, StateName, ActionDate)
    SELECT 'DELETE', deleted.StateID, deleted.Name, GETDATE()
    FROM deleted;
END;
GO

---> Trigger Insert Project
CREATE TRIGGER trgAfterInsertProject
ON [Project]
AFTER INSERT
AS
BEGIN
    INSERT INTO ProjectLog (Action, ProjectID, ProjectName, ActionDate)
    SELECT 'INSERT', inserted.ProjectID, inserted.Name, GETDATE()
    FROM inserted;
END;
GO

---> Trigger Update Project
CREATE TRIGGER trgAfterUpdateProject
ON [Project]
AFTER UPDATE
AS
BEGIN
    INSERT INTO ProjectLog (Action, ProjectID, ProjectName, ActionDate)
    SELECT 'UPDATE', inserted.ProjectID, inserted.Name, GETDATE()
    FROM inserted;
END;
GO

---> Trigger Delete Project
CREATE TRIGGER trgAfterDeleteProject
ON [Project]
AFTER DELETE
AS
BEGIN
    INSERT INTO ProjectLog (Action, ProjectID, ProjectName, ActionDate)
    SELECT 'DELETE', deleted.ProjectID, deleted.Name, GETDATE()
    FROM deleted;
END;
GO

---> Trigger Insert UserProject
CREATE TRIGGER trgAfterInsertUserProject
ON UserProject
AFTER INSERT
AS
BEGIN
    INSERT INTO UserProjectLog (Action, UserID, ProjectID, ActionDate)
    SELECT 'INSERT', inserted.UserID, inserted.ProjectID, GETDATE()
    FROM inserted;
END;
GO

---> Trigger Update UserProject
CREATE TRIGGER trgAfterUpdateUserProject
ON UserProject
AFTER UPDATE
AS
BEGIN
    INSERT INTO UserProjectLog (Action, UserID, ProjectID, ActionDate)
    SELECT 'UPDATE', inserted.UserID, inserted.ProjectID, GETDATE()
    FROM inserted;
END;
GO

---> Trigger Delete UserProject
CREATE TRIGGER trgAfterDeleteUserProject
ON UserProject
AFTER DELETE
AS
BEGIN
    INSERT INTO UserProjectLog (Action, UserID, ProjectID, ActionDate)
    SELECT 'DELETE', deleted.UserID, deleted.ProjectID, GETDATE()
    FROM deleted;
END;
GO

---> Trigger Insert ProjectComment
CREATE TRIGGER trgAfterInsertProjectComment
ON ProjectComment
AFTER INSERT
AS
BEGIN
    INSERT INTO ProjectCommentLog (Action, UserID, ProjectID, ActionDate)
    SELECT 'INSERT', inserted.UserID, inserted.ProjectID, GETDATE()
    FROM inserted;
END;
GO

---> Trigger Update ProjectComment
CREATE TRIGGER trgAfterUpdateProjectComment
ON ProjectComment
AFTER UPDATE
AS
BEGIN
    INSERT INTO ProjectCommentLog (Action, UserID, ProjectID, ActionDate)
    SELECT 'UPDATE', inserted.UserID, inserted.ProjectID, GETDATE()
    FROM inserted;
END;
GO

---> Trigger Delete ProjectComment
CREATE TRIGGER trgAfterDeleteProjectComment
ON ProjectComment
AFTER DELETE
AS
BEGIN
    INSERT INTO ProjectCommentLog (Action, UserID, ProjectID, ActionDate)
    SELECT 'DELETE', deleted.UserID, deleted.ProjectID, GETDATE()
    FROM deleted;
END;
GO

---> Trigger Insert TypeIssue
CREATE TRIGGER trgAfterInsertTypeIssue
ON TypeIssue
AFTER INSERT
AS
BEGIN
    INSERT INTO TypeIssueLog (Action, TypeIssueID, TypeIssueName, ActionDate)
    SELECT 'INSERT', inserted.TypeIssueID, inserted.Name, GETDATE()
    FROM inserted;
END;
GO

---> Trigger Update TypeIssue
CREATE TRIGGER trgAfterUpdateTypeIssue
ON TypeIssue
AFTER UPDATE
AS
BEGIN
    INSERT INTO TypeIssueLog (Action, TypeIssueID, TypeIssueName, ActionDate)
    SELECT 'UPDATE', inserted.TypeIssueID, inserted.Name, GETDATE()
    FROM inserted;
END;
GO

---> Trigger Delete TypeIssue
CREATE TRIGGER trgAfterDeleteTypeIssue
ON TypeIssue
AFTER DELETE
AS
BEGIN
    INSERT INTO TypeIssueLog (Action, TypeIssueID, TypeIssueName, ActionDate)
    SELECT 'DELETE', deleted.TypeIssueID, deleted.Name, GETDATE()
    FROM deleted;
END;
GO

---> Trigger Insert Issue
CREATE TRIGGER trgAfterInsertIssue
ON Issue
AFTER INSERT
AS
BEGIN
    INSERT INTO IssueLog (Action, IssueID, IssueName, ActionDate)
    SELECT 'INSERT', inserted.IssueID, inserted.Name, GETDATE()
    FROM inserted;
END;
GO

---> Trigger Update Issue
CREATE TRIGGER trgAfterUpdateIssue
ON Issue
AFTER UPDATE
AS
BEGIN
    INSERT INTO IssueLog (Action, IssueID, IssueName, ActionDate)
    SELECT 'UPDATE', inserted.IssueID, inserted.Name, GETDATE()
    FROM inserted;
END;
GO

---> Trigger Delete Issue
CREATE TRIGGER trgAfterDeleteIssue
ON Issue
AFTER DELETE
AS
BEGIN
    INSERT INTO IssueLog (Action, IssueID, IssueName, ActionDate)
    SELECT 'DELETE', deleted.IssueID, deleted.Name, GETDATE()
    FROM deleted;
END;
GO

---> Trigger Insert IssueComment
CREATE TRIGGER trgAfterInsertIssueComment
ON IssueComment
AFTER INSERT
AS
BEGIN
    INSERT INTO IssueCommentLog (Action, UserID, IssueID, ActionDate)
    SELECT 'INSERT', inserted.UserID, inserted.IssueID, GETDATE()
    FROM inserted;
END;
GO

---> Trigger Update IssueComment
CREATE TRIGGER trgAfterUpdateIssueComment
ON IssueComment
AFTER UPDATE
AS
BEGIN
    INSERT INTO IssueCommentLog (Action, UserID, IssueID, ActionDate)
    SELECT 'UPDATE', inserted.UserID, inserted.IssueID, GETDATE()
    FROM inserted;
END;
GO

---> Trigger Delete IssueComment
CREATE TRIGGER trgAfterDeleteIssueComment
ON IssueComment
AFTER DELETE
AS
BEGIN
    INSERT INTO IssueCommentLog (Action, UserID, IssueID, ActionDate)
    SELECT 'DELETE', deleted.UserID, deleted.IssueID, GETDATE()
    FROM deleted;
END;
GO

---> Trigger Insert Event
CREATE TRIGGER trgAfterInsertEvent
ON [Event]
AFTER INSERT
AS
BEGIN
    INSERT INTO EventLog (Action, EventID, Description, ActionDate)
    SELECT 'INSERT', inserted.EventID, inserted.Description, GETDATE()
    FROM inserted;
END;
GO

---> Trigger Update Event
CREATE TRIGGER trgAfterUpdateEvent
ON [Event]
AFTER UPDATE
AS
BEGIN
    INSERT INTO EventLog (Action, EventID, Description, ActionDate)
    SELECT 'UPDATE', inserted.EventID, inserted.Description, GETDATE()
    FROM inserted;
END;
GO

---> Trigger Delete Event
CREATE TRIGGER trgAfterDeleteEvent
ON [Event]
AFTER DELETE
AS
BEGIN
    INSERT INTO EventLog (Action, EventID, Description, ActionDate)
    SELECT 'DELETE', deleted.EventID, deleted.Description, GETDATE()
    FROM deleted;
END;
GO

