USE [master]
GO
/****** Object:  Database [test]    Script Date: 18-02-2022 01:02:45 PM ******/
CREATE DATABASE [test]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'test', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\test.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'test_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\test_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [test] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [test].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [test] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [test] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [test] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [test] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [test] SET ARITHABORT OFF 
GO
ALTER DATABASE [test] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [test] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [test] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [test] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [test] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [test] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [test] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [test] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [test] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [test] SET  ENABLE_BROKER 
GO
ALTER DATABASE [test] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [test] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [test] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [test] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [test] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [test] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [test] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [test] SET RECOVERY FULL 
GO
ALTER DATABASE [test] SET  MULTI_USER 
GO
ALTER DATABASE [test] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [test] SET DB_CHAINING OFF 
GO
ALTER DATABASE [test] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [test] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [test] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [test] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'test', N'ON'
GO
ALTER DATABASE [test] SET QUERY_STORE = OFF
GO
USE [test]
GO
/****** Object:  UserDefinedFunction [dbo].[fun_PrintNumber]    Script Date: 18-02-2022 01:02:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fun_PrintNumber]()  
returns decimal(7,2)  
as  
begin  
    return 1000.13  
end 
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 18-02-2022 01:02:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[EMail] [nvarchar](50) NULL,
	[Phone] [varchar](15) NULL,
	[HireDate] [date] NULL,
	[Salary] [money] NULL,
	[Place] [nvarchar](50) NULL,
	[DepartmentID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purchase_Detail]    Script Date: 18-02-2022 01:02:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchase_Detail](
	[EmployeeID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[Product] [nvarchar](50) NULL,
	[Units] [varchar](15) NULL,
	[Cost] [money] NULL,
	[Place] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Employee_Purchase]    Script Date: 18-02-2022 01:02:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Employee_Purchase] as
select Employee.FirstName, Employee.Phone, Purchase_Detail.Product,  Purchase_Detail.Cost
from Employee 
inner join Purchase_Detail 
on Employee.EmployeeID = Purchase_Detail.EmployeeID
GO
/****** Object:  UserDefinedFunction [dbo].[Fun_EmployeeInformation]    Script Date: 18-02-2022 01:02:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create function [dbo].[Fun_EmployeeInformation]()      
returns table       
as      
return(select * from Employee)
GO
/****** Object:  Table [dbo].[Car]    Script Date: 18-02-2022 01:02:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car](
	[CarID] [int] NULL,
	[CarName] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarDescription]    Script Date: 18-02-2022 01:02:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarDescription](
	[CarID] [int] NULL,
	[CarDescription] [varchar](800) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales_Detail]    Script Date: 18-02-2022 01:02:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales_Detail](
	[Order_ID] [int] NOT NULL,
	[Product_Type] [nvarchar](50) NOT NULL,
	[Order_Priority] [nvarchar](10) NULL,
	[Unit_Price] [int] NULL,
	[Order_Date] [date] NULL,
	[Country] [nvarchar](50) NULL,
	[Buyer_FirstName] [nvarchar](15) NULL,
	[Buyer_LastName] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Employee_Index]    Script Date: 18-02-2022 01:02:45 PM ******/
CREATE NONCLUSTERED INDEX [Employee_Index] ON [dbo].[Employee]
(
	[EmployeeID] ASC,
	[FirstName] ASC,
	[LastName] ASC,
	[EMail] ASC,
	[Phone] ASC,
	[HireDate] ASC,
	[Salary] ASC,
	[Place] ASC,
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Purchase_Detail]  WITH CHECK ADD  CONSTRAINT [Foreignkey_PurchaseDetail] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[Purchase_Detail] CHECK CONSTRAINT [Foreignkey_PurchaseDetail]
GO
/****** Object:  StoredProcedure [dbo].[GetCarDesc]    Script Date: 18-02-2022 01:02:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCarDesc]
AS
BEGIN
SET NOCOUNT ON
SELECT C.CarID,C.CarName,CD.CarDescription  FROM 
Car C
INNER JOIN CarDescription CD ON C.CarID=CD.CarID
END
GO
/****** Object:  StoredProcedure [dbo].[GetCarDesc1]    Script Date: 18-02-2022 01:02:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCarDesc1]
AS
BEGIN
SET NOCOUNT ON
SELECT C.CarID,C.CarName,CD.CarDescription  FROM 
Car C
INNER JOIN CarDescription CD ON C.CarID=CD.CarID
END
GO
/****** Object:  StoredProcedure [dbo].[Procedure_Employee_Purchase]    Script Date: 18-02-2022 01:02:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Procedure_Employee_Purchase]
AS
BEGIN
SET NOCOUNT ON
select Employee.FirstName, Purchase_Detail.Product, Purchase_Detail.Cost, Employee.Phone 
from Employee 
inner join Purchase_Detail 
on Employee.EmployeeID = Purchase_Detail.EmployeeID
END
GO
USE [master]
GO
ALTER DATABASE [test] SET  READ_WRITE 
GO
