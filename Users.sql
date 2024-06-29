---> Use the DataBase ToDoDB
USE ToDoDB;
GO

---------------------------------------- Create User Data Base ---------------------------------------

---> Create a login and user for ToDoUser (if not already created)

IF NOT EXISTS (SELECT name FROM sys.server_principals WHERE name = 'ToDoUser')
BEGIN
    CREATE LOGIN ToDoUser WITH PASSWORD = 'Admin1234+';
END

IF NOT EXISTS (SELECT name FROM sys.database_principals WHERE name = 'ToDoUser')
BEGIN
    CREATE USER ToDoUser FOR LOGIN ToDoUser;
END

---> Grant CONTROL permissions on the database to ToDoUser
GRANT CONTROL ON DATABASE::ToDoDB TO ToDoUser;

---------------------------------------- User Roles ---------------------------------------

---> Grant SELECT permission on specific schemas/tables/views to ToDoUser

GRANT SELECT ON SCHEMA::dbo TO ToDoUser; 

