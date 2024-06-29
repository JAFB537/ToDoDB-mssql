--------------------------------------- CREATE DATABASE ---------------------------------------
USE master;
GO

-- Delete DataBase If Exist
IF EXISTS (SELECT * FROM sys.databases WHERE name = 'ToDoDB')
BEGIN
    ALTER DATABASE ToDoDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE ToDoDB;
END
GO