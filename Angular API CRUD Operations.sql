use EmployeeDB
create database EmployeeDB

create table dbo.Department(
DepartmentId int identity(1,1),
DepartmentName varchar(500)
)
use EmployeeDB
select * from dbo.Department

use EmployeeDB
insert into dbo.Department values
('Support')
