/*
create database test1;
---------------------------------------------------------
backup database test1
to disk = 'C:\Dhanush\Full stack Training\SQL\Test1.bak';
---------------------------------------------------------
CREATE TABLE Employee
(  
    EmployeeID int,
    FirstName nvarchar(50) NOT NULL,  
    LastName nvarchar(50) NOT NULL, 
    EMail nvarchar(50),
    Phone varchar(15),
    HireDate date,
    Salary Money
);
---------------------------------------------------------
ALTER TABLE dbo.Employee
Add Address varchar(500) NOT NULL,
    Designation varchar(50) NOT NULL,
    Qualification varchar(100);
---------------------------------------------------------
SELECT * FROM Employee;
---------------------------------------------------------
ALTER TABLE dbo.Employee
DROP COLUMN Address,Phone, Email;
---------------------------------------------------------
ALTER TABLE dbo.Employee
Add Addres varchar(500) NOT NULL,
    Email varchar(50) NOT NULL,
    Phone varchar(100);
------------------------------------------------------------------------------------------------------------------ 
Insert into 
Employee(EmployeeID, FirstName, LastName, HireDate, Salary, Designation, Qualification, Addres, Email, Phone) 
values 
('101','John','King','05-01-2022','88000','Manager','M.Sc','Chennai','jhon@gmail.com','9984560213');
------------------------------------------------------------------------------------------------------------------ 
Insert into 
Employee(EmployeeID, FirstName, LastName, HireDate, Salary, Designation, Qualification, Addres, Email, Phone) 
values 
('103','Muhammed','Anser','02-01-2022','670800','Worker','SSLC','Dubai','Mhd@gmail.com','8880560617'),
('104','Muhammed','Ashik','01-01-2022','770800','Worker','NA','Britain','Mhd@gmail.com','8886560614');
------------------------------------------------------------------------------------------------------------------
delete from Employee where EmployeeID = 103;
------------------------------------------------------------------------------------------------------------------
*/
