USE master;
GO

---> Verify that the database is not currently in use
ALTER DATABASE ToDoDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO

---> Restore database from backup file
RESTORE DATABASE ToDoDB
FROM DISK = '/var/opt/mssql/backups/ToDoDB.bak'
WITH REPLACE, RECOVERY, STATS = 10;
GO
