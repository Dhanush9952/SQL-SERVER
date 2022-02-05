
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
('104','Rahul2','Dravid2','rad2@gmail.com','8880560612','02-01-2022','100002'),
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
					--**CREATING PROCEDURES**
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
USE test SELECT * FROM CarDescription
------------------------------------------------------------------------------------------------------------------

							--***********  CREATING STORED PROCEDURES  *********

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