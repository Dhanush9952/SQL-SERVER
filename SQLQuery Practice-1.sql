
use test2
create table FinancialStatement
(
Segment varchar(50) not null, 
Country varchar(50) not null, 
Product varchar(50) not null, 
Units_Sold int, 
Manufacturing_Price int,
Selling_Price int,
DateOfSales date,
);

use test2
insert into FinancialStatement
(Segment,Country,Product,Units_Sold,Manufacturing_Price,Selling_Price,DateOfSales)
values
('Government','Germany','Carretera', 1312, 3, 20, '01/01/2014'),
('Government','France','Carretera', 2178, 3, 15, '01/06/2016'),
('Government','France','Carretera', 2178, 3, 15, '01/06/2016'),
('MidMarket','Canada',' Paseo ', 621, 12, 120, '01/08/2014'),
('MidMarket','Mexico',' Paseo ', 178, 15, 50, '01/09/2015'),
('MidMarket','USA',' Paseo ', 478, 7, 65, '01/12/2013');



use test2 select * from FinancialStatement

--CALCULATE TOTAL SALES VALUE
use test2 select Segment, Units_Sold*Selling_Price as TotalSaleValue from FinancialStatement;

--CALCULATE TOTAL PROFIT
use test2 
select Segment, Country, 
(Units_Sold*Selling_Price)-(Units_Sold*Manufacturing_Price) 
as TotalProfit 
from FinancialStatement;



use test2
create table Customer_Details
(
FirstName nvarchar(15) not null,
LastName nvarchar(15) not null,
AddressDetail varchar(100),
City varchar(20),
StateCode nvarchar(4),
Email varchar(50),
Phone int
);


/*
use test2
insert into Customer_Details
(FirstName,LastName,AddressDetail,City,StateCode,Email,Phone)
values
('Rebbecca'	,'Didio'	    ,'BrandtJonathan F Esq	171 E 24th St'	        ,'Leith'	        ,'TAS'	 ,   'rebbecca.didio@didio.com.au'    ,     0381749123),
('Stevie'	,'Hallo'	    ,'LandrumTemporary Services	22222 Acoma St'  	,'Proston'	    ,    'QLD',		'stevie.hallo@hotmail.com'    ,        0799973366 ),   
('Mariko'	    ,Stayer	    ,Inabinet, Macre Esq	534 Schoenborn St #51	,    Hamel	    ,    WA	,	mariko_stayer@hotmail.com       ,    08-5558-9019),
('Gerardo'	    ,Woodka	    ,Morris Downing & Sherred	69206 Jackson Ave	,Talmalmo	    ,NSW	,	gerardo_woodka@hotmail.com      ,     02-6044-4682),
('Mayra'    ,Bena	    ,Buelt, David L Esq	808 Glen Cove Ave	        ,Lane Cove	    ,NSW	,	mayra.bena@gmail.com            ,    02-1455-6085),
('Idella'   ,Scotland	,Artesian Ice & Cold Storage Co	373  St     	,Cartmeticup	,    WA	,	idella@hotmail.com              ,    08-7868-1355),
('Sherill'	    ,Klar	    ,Midway Hotel	87 Sylvan Ave	                ,Nyamup	        ,WA		s,klar@hotmail.com                  , 08-6522-8931),
('Ena'	        ,Desjardiws	,Selsor, Robert J Esq	60562 Ky Rt 321	        ,Bendick Murrell,	NSW	,	ena_desjardiws@desjardiws.com.au,    02-5226-9402),
('Vince'	    ,Siena	    ,Vincent J Petti & Co	70 S 18th Pl	        ,Purrawunda	    ,QLD	,	vince_siena@yahoo.com           ,    07-3184-9989),
('Theron'	    ,Jarding 	,Prentiss, Paul F Esq	8839 Ventura Blvd	    ,Blanchetown	,    SA	,	tjarding@hotmail.com            ,    08-6890-4661),
('Amira'	    ,Chudej	    ,Public Works Department	3684 N Wacker Dr	,    Rockside	,    QLD,		amira.chudej@chudej.net.au  ,        07-8135-3271),
('Marica'	    ,Tarbor  	,Prudential Lighting Corp	68828 S 32nd St #6	,Rosegarland	,    TAS,		marica.tarbor@hotmail.com   ,        03-1174-6817),
('Shawna'  	,Albrough	,Wood, J Scott Esq	43157 Cypress St	        ,Ringwood	    ,QLD	,	shawna.albrough@albrough.com.au ,    07-7977-6039),
('Paulina'	    ,Maker	    ,Swanson Peterson Fnrl Home Inc	6 S Hanover Ave	,Maylands	    ,WA		p,aulina_maker@maker.net.au         , 08-8344-8929),
('Rose'	    ,Jebb	    ,Old Cider Mill Grove	27916 Tarrytown Rd	    ,Wooloowin	    ,QLD	,	rose@jebb.net.au                ,    07-4941-9471),
('Reita'	    ,Tabar	    ,Cooper Myers Y Co	79620 Timber Dr	            ,Arthurville	,    NSW,		rtabar@hotmail.com          ,        02-3518-7078),
('Maybelle'	,Bewley	    ,Angelo International	387 Airway Cir #62	    ,Mapleton	    ,QLD	,	mbewley@yahoo.com               ,    07-9387-7293),
('Camellia'	,Pylant	    ,Blackley, William J Pa	570 W Pine St	        ,Tuggerawong	,    NSW,		camellia_pylant@gmail.com   ,        02-5171-4345),
('Roy'	Nybo	,Phoenix    , Phototype	823 Fishers Ln	                    ,Red Hill	    ,ACT	,	rnybo@nybo.net.au               ,    02-5311-7778)

*/








