---> Use the DataBase ToDoDB
USE ToDoDB;
GO

---------------------------------------- Create User Data Base ---------------------------------------

USE ToDoDB;
CREATE LOGIN ToDoUser 
   WITH PASSWORD = 'Admin1234+';
CREATE USER ToDoUser 
   FOR LOGIN ToDoUser;

GRANT CONTROL ON DATABASE::ToDoDB TO ToDoUser;