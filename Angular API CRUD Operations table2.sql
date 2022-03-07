use EmployeeDB
create table dbo.Employees(
EmployeeID int identity(1,1),
EmployeeName varchar(50),
Department varchar(50),
DateOfJoining date,
PhotoFileName varchar(500)
)

use EmployeeDB
insert into dbo.Employees values
('Sam','IT','06-03-2022','anonymous.png')

use EmployeeDB
select * from dbo.Employees