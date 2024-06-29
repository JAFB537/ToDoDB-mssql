USE master;
GO

BACKUP DATABASE ToDoDB
TO DISK = '/var/opt/mssql/backups/ToDoDB.bak'
WITH FORMAT,
     MEDIANAME = 'ToDoDB_Backup',
     NAME = 'Full Backup of ToDoDB';
GO

