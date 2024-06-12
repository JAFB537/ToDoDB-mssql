--------------------------------------- CREATE DATABASE ---------------------------------------

-- Delete DataBase If Exist
IF EXISTS (SELECT * FROM sys.databases WHERE name = 'ToDoDB')
BEGIN
    USE master;
    ALTER DATABASE ToDoDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE ToDoDB;
END
GO