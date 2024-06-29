--------------------------------------- CREATE DATABASE ---------------------------------------

---> Create DataBase
CREATE DATABASE ToDoDB;
GO

---> Use the DataBase ToDoDB
USE ToDoDB;
GO

--------------------------------------- CREATE TABLES ---------------------------------------

---> Create Table User
CREATE TABLE [User]
(
    UserID uniqueidentifier PRIMARY KEY DEFAULT NEWSEQUENTIALID() NOT NULL,
    Name VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Age INT,
    PhoneNumber VARCHAR(50),
    UserName VARCHAR(20) NOT NULL,
    Password VARCHAR(24) NOT NULL,
    Email VARCHAR(30) NOT NULL,
    Image VARCHAR(100),
    Country VARCHAR(50) NOT NULL
);
GO

---> Create Table State
CREATE TABLE [State]
(
    StateID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    Name VARCHAR(50) NOT NULL
);
GO

---> Create Table Project
CREATE TABLE [Project]
(
    ProjectID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    Name VARCHAR(50) NOT NULL,
    Description VARCHAR(1000),
    StartDate DATE,
    EndDate DATE,
    DateCreated DATETIME NOT NULL DEFAULT GETDATE(),
    StateID INT NOT NULL,
    UserID uniqueidentifier NOT NULL,
    FOREIGN KEY (StateID) REFERENCES [State](StateID),
    FOREIGN KEY (UserID) REFERENCES [User](UserID)
);
GO

---> Create Table UserProject
CREATE TABLE [UserProject]
(
    UserID uniqueidentifier,
    ProjectID INT,
    PRIMARY KEY (UserID, ProjectID),
    FOREIGN KEY (UserID) REFERENCES [User](UserID),
    FOREIGN KEY (ProjectID) REFERENCES [Project](ProjectID)
);
GO

---> Create Table ProjectComment
CREATE TABLE [ProjectComment]
(
    UserID uniqueidentifier NOT NULL,
    ProjectID INT NOT NULL,
    Description VARCHAR(1000),
    PRIMARY KEY (UserID, ProjectID),
    FOREIGN KEY (UserID) REFERENCES [User](UserID),
    FOREIGN KEY (ProjectID) REFERENCES [Project](ProjectID)
);
GO

---> Create Table TypeIssue
CREATE TABLE [TypeIssue]
(
    TypeIssueID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    Name VARCHAR(50) NOT NULL,
    Description VARCHAR(1000),
    Image VARCHAR(100),
    DateCreated DATETIME NOT NULL DEFAULT GETDATE()
);
GO

---> Create Table Issue
CREATE TABLE [Issue]
(
    IssueID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    Name VARCHAR(50) NOT NULL,
    Description VARCHAR(1000),
    DateCreated DATETIME NOT NULL DEFAULT GETDATE(),
    StateID INT NOT NULL,
    TypeIssueID INT NOT NULL,
    UserID uniqueidentifier NOT NULL,
    ProjectID INT NOT NULL,
    FOREIGN KEY (StateID) REFERENCES [State](StateID),
    FOREIGN KEY (TypeIssueID) REFERENCES [TypeIssue](TypeIssueID),
    FOREIGN KEY (UserID) REFERENCES [User](UserID),
    FOREIGN KEY (ProjectID) REFERENCES [Project](ProjectID)
);
GO

---> Create Table IssueComment
CREATE TABLE [IssueComment]
(
    UserID uniqueidentifier NOT NULL,
    IssueID INT NOT NULL,
    Description VARCHAR(1000),
    PRIMARY KEY (UserID, IssueID),
    FOREIGN KEY (UserID) REFERENCES [User](UserID),
    FOREIGN KEY (IssueID) REFERENCES [Issue](IssueID)
);
GO

---> Create Table Event
CREATE TABLE [Event] 
(
    EventID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    StartDate DATETIME NOT NULL,
    EndDate DATETIME NOT NULL,
    Description VARCHAR(1000),
    UserID uniqueidentifier NOT NULL,
    IssueID INT NOT NULL,
    FOREIGN KEY (UserID) REFERENCES [User](UserID),
    FOREIGN KEY (IssueID) REFERENCES [Issue](IssueID)
);
GO

---------------------------------------- CREATE TABLES LOG ---------------------------------------

---> Create Table UserLog
CREATE TABLE UserLog (
    LogID INT PRIMARY KEY IDENTITY(1,1),
    Action VARCHAR(10),
    UserID uniqueidentifier,
    UserName VARCHAR(20),
    ActionDate DATETIME NOT NULL DEFAULT GETDATE()
);
GO

---> Create Table StateLog
CREATE TABLE StateLog (
    LogID INT PRIMARY KEY IDENTITY(1,1),
    Action VARCHAR(10),
    StateID INT,
    StateName VARCHAR(50),
    ActionDate DATETIME NOT NULL DEFAULT GETDATE()
);
GO

---> Create Table ProjectLog
CREATE TABLE ProjectLog (
    LogID INT PRIMARY KEY IDENTITY(1,1),
    Action VARCHAR(10),
    ProjectID INT,
    ProjectName VARCHAR(50),
    ActionDate DATETIME NOT NULL DEFAULT GETDATE()
);
GO

---> Create Table UserProjectLog
CREATE TABLE UserProjectLog (
    LogID INT PRIMARY KEY IDENTITY(1,1),
    Action VARCHAR(10),
    UserID uniqueidentifier,
    ProjectID INT,
    ActionDate DATETIME NOT NULL DEFAULT GETDATE()
);
GO

---> Create Table ProjectCommentLog
CREATE TABLE ProjectCommentLog (
    LogID INT PRIMARY KEY IDENTITY(1,1),
    Action VARCHAR(10),
    UserID uniqueidentifier,
    ProjectID INT,
    Description VARCHAR(1000),
    ActionDate DATETIME NOT NULL DEFAULT GETDATE()
);
GO

---> Create Table TypeIssueLog
CREATE TABLE TypeIssueLog (
    LogID INT PRIMARY KEY IDENTITY(1,1),
    Action VARCHAR(10),
    TypeIssueID INT,
    TypeIssueName VARCHAR(50),
    ActionDate DATETIME NOT NULL DEFAULT GETDATE()
);
GO

---> Create Table IssueLog
CREATE TABLE IssueLog (
    LogID INT PRIMARY KEY IDENTITY(1,1),
    Action VARCHAR(10),
    IssueID INT,
    IssueName VARCHAR(50),
    ActionDate DATETIME NOT NULL DEFAULT GETDATE()
);
GO

---> Create Table IssueCommentLog
CREATE TABLE IssueCommentLog (
    LogID INT PRIMARY KEY IDENTITY(1,1),
    Action VARCHAR(10),
    UserID uniqueidentifier,
    IssueID INT,
    Description VARCHAR(1000),
    ActionDate DATETIME NOT NULL DEFAULT GETDATE()
);
GO

---> Create Table EventLog
CREATE TABLE EventLog (
    LogID INT PRIMARY KEY IDENTITY(1,1),
    Action VARCHAR(10),
    EventID INT,
    Description VARCHAR(500),
    ActionDate DATETIME NOT NULL DEFAULT GETDATE()
);
GO

