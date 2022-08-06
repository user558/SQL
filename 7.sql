--
CREATE LOGIN test_login
    WITH PASSWORD = '1234'; 
CREATE USER test_user FOR LOGIN test_login

--поменять пароль 
ALTER LOGIN test_login with password = '4321'
OLD_PASSWORD = 'test_login' 

--Права SELECT,INSERT,UPDATE в полном объёме
GRANT SELECT, DELETE, INSERT, UPDATE on EMPLOYEE
	TO test_user

--проверка 
SELECT * from EMPLOYEE
INSERT into EMPLOYEE VALUES (447,'onton','gvozdev',702,304,'19.06.10');
UPDATE EMPLOYEE set first_name='Anton' where name = 'onton'
DELETE from employee where employee_id = 446
	
--права SELECT,UPDATE в некоторых столбцах
GRANT SELECT, UPDATE on SHIP(Ship_ID, Name, owners_id, Captain_id)
	TO test_user

--проверка 
SELECT * from ship
UPDATE ship set name = 'Anjel' where name ='Black Pearl'

--право SELECT в таблице
GRANT SELECT on OWNERS
	TO test_user

--проверка
SELECT * from owners

GRANT SELECT ON VIEW_1 to test_user

select * from view_1

	----------
CREATE ROLE myRole;
GRANT SELECT ON View_1 TO myRole;
GRANT UPDATE ON View_1 TO myRole;



EXEC sp_addrolemember 'myRole', 'test_user';    
  

--SELECT * FROM  View_1