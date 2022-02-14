
/*
create database test; 
------------------------------------------------------------------------------------------------------------------
					--***CREATE TABLE WITH PRIMARY KEY, VARIABLE DECL***
CREATE TABLE Employee
(  
    EmployeeID int, primary key (EmployeeID),
    FirstName nvarchar(50) NOT NULL,  
    LastName nvarchar(50) NOT NULL, 
    EMail nvarchar(50),
    Phone varchar(15),
    HireDate date,
    Salary Money
);
------------------------------------------------------------------------------------------------------------------
                     -- ***INSERT DATA INTO A TABLE ***
use test Insert into 
Employee(EmployeeID, FirstName, LastName, Email, Phone, HireDate, Salary) 
values 
('101','Rahul','Dravid','rad@gmail.com','8880560617','02-01-2022','10000'),
('102','Tomato','Sauce','tse@gmail.com','8886560614','01-01-2022','20000'),
('103','Bill','Joan','bill@gmail.com','7886560614','04-01-2022','30000');

use test Insert into 
Employee(EmployeeID, FirstName, LastName, Email, Phone, HireDate, Salary) 
values 
('107','Rahul2','Dravid2','rad2@gmail.com','8880560612','02-01-2022','100002'),
('105','Tomato2','Sauce2','tse2@gmail.com','8886560612','01-01-2022','200002'),
('106','Bill2','Joan2','bill2@gmail.com','7886560612','04-01-2022','300002');
------------------------------------------------------------------------------------------------------------------
                   --    ***ADD COLUMN TO A TABLE***
alter table Employee 
add Place nvarchar(50);
------------------------------------------------------------------------------------------------------------------
					--***DISPLAY ONE COLUMN OUTPUT***
USE test SELECT Email from Employee

					--***DISPLAY NO.OF.ROWS WITH different Column name***
USE test SELECT COUNT (*) as RECORDS from Employee
						--simple addition (NON DB)
USE test SELECT(10+20) as ADDITION
------------------------------------------------------------------------------------------------------------------
				--***DISPLAY CURRENT DATE AND TIME***
SELECT CURRENT_TIMESTAMP;
	--(or)
SELECT  GETDATE();;
------------------------------------------------------------------------------------------------------------------
					--** ⌚CREATING PROCEDURES**
CREATE PROCEDURE FindSite
  @site_name VARCHAR(50) OUT

AS

BEGIN

   DECLARE @site_id INT;

   SET @site_id = 8;

   IF @site_id < 10
      SET @site_name = 'TechOnTheNet.com';
   ELSE
      SET @site_name = 'CheckYourMath.com';

END;
------------------------------------------------------------------------------------------------------------------
						--***DISPLAY FULL TABLE OUTPUT***
USE car SELECT * FROM Car
------------------------------------------------------------------------------------------------------------------

							--*********** CREATING STORED PROCEDURES  *********

CREATE TABLE Car(CarID INT,CarName VARCHAR(100));
INSERT INTO Car VALUES (101,'Mercedes-Benz');
INSERT INTO Car VALUES (201,'BMW');
INSERT INTO Car VALUES (301,'Ferrari');
INSERT INTO Car VALUES (401,'Lamborghini');
INSERT INTO Car VALUES (501,'Porsche');


CREATE TABLE CarDescription(CarID INT,CarDescription VARCHAR(800));
INSERT INTO CarDescription VALUES 
(101,'Luxury vehicle from the German automotive'),
(201,'Luxury motorcycle from the German automotive'),
(301,'Luxury sports car from the Italian manufacturer'),
(401,'Luxury SUV from the Italian automotive'),
(501,'High-performance sports car from the German manufacturer');

							--***********  CREATING STORED PROCEDURES  *********

CREATE PROCEDURE GetCarDesc
AS
BEGIN
SET NOCOUNT ON
SELECT C.CarID,C.CarName,CD.CarDescription  FROM 
Car C
INNER JOIN CarDescription CD ON C.CarID=CD.CarID
END

									--***RUN/EXECUTE STORED PROCEDURE***
EXEC GetCarDesc

------------------------------------------------------------------------------------------------------------------
									--***DELETE A ROW FROM A TABLE***
delete from Car where CarId = '101' and CarName = 'BMW'
------------------------------------------------------------------------------------------------------------------

use test Insert into Car(CarID,CarName) values (102,'BMW')

select * from Employee 

select CarID as "ID" from Car

select EmployeeID,EMail+Phone as POSTMAN from Employee where EmployeeID=104

select COUNT(EmployeeID) from Employee  


------------------------------------------------------------------------------------------------------------------
									--***IF ELSE Condition*** 
DECLARE @site_value INT;
SET @site_value = 15;

IF @site_value < 25
   PRINT 'TechOnTheNet.com';
ELSE
   PRINT 'CheckYourMath.com';

GO

------------------------------------------------------------------------------------------------------------------

DECLARE @site_value INT;
SET @site_value = 0;

WHILE @site_value <= 6
BEGIN
   PRINT 'Inside WHILE LOOP on TechOnTheNet.com';
   SET @site_value = @site_value + 1;
END;

PRINT 'Done WHILE LOOP on TechOnTheNet.com';
GO

------------------------------------------------------------------------------------------------------------------
									--***CREATE NEW TABLE AND INSERT VALUES*** 

use test CREATE TABLE Contacts
(  
    EmployeeID int, primary key (EmployeeID),
    PersonName nvarchar(50) NOT NULL,  
    Item nvarchar(50),
    Units varchar(15),
    Cost Money
);

use test Insert into 
Contacts(EmployeeID, PersonName, Item, Units, Cost) 
values 
('101','Smith','Desk','2','125.00'),
('102','Gill','Pencil','5','413.00'),
('103','Andrew','Binder','17','529.00'),
('104','Morgan','Pen','21','1250.00'),
('105','Jordan','Pen-set','42','1005.00')

------------------------------------------------------------------------------------------------------------------
									--***INNER JOINS*** 

select Employee.FirstName, Employee.Phone, Contacts.Item
from Employee,Contacts
where Employee.EmployeeID = Contacts.EmployeeID

------------------------------------------------------------------------------------------------------------------
									--***UPDATE ROW VALUE IN A TABLE*** 

update Contacts set Units = '15' where Units = 5

------------------------------------------------------------------------------------------------------------------
									--***LEFT OUTER JOIN***

use test select Employee.FirstName, Employee.EMail 
from Employee
left outer join Contacts
on Employee.EmployeeID = Contacts.EmployeeID
where Employee.EmployeeID = Contacts.EmployeeID
------------------------------------------------------------------------------------------------------------------
									--***DISPLAY CURRENT TIMESTAMP***

SELECT CURRENT_TIMESTAMP as "CURRENT ⌚ LOCAL TIME";

------------------------------------------------------------------------------------------------------------------
									--***DISPLAY UNIQUE RECORDS(EXCLUDE DUPLICATES)***

SELECT distinct LastName from Employee 
------------------------------------------------------------------------------------------------------------------
									--***INSERT DATA FROM ONE TABLE TO ANOTHER(WITH SAME COLUMN NAME)***

insert into Contacts 
(EmployeeID,FirstName)
select EmployeeID,FirstName
from Employee
where EmployeeID = '107'
------------------------------------------------------------------------------------------------------------------
*/

use test select * from Contacts
use test select * from Employee



SELECT distinct LastName from Employee 


update Contacts set place = 'Mexico' where Cost  < 500


