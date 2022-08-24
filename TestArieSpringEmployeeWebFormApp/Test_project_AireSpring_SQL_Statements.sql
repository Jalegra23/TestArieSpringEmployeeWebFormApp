use master


-------------CREATION OF THE DATABASE------------------
BEGIN
create database AireSpring
END

----------END  CREATION OF THE DATABASE ----------------


use AireSpring

--------CREATE DEFAULT VALUES----------

--drop table EmployeeInformation

create table EmployeeInformation
(
EmployeeID int not null identity, 
EmployeeLastName varchar(max) not null,
EmployeeFirstName varchar(max) not null,
EmployeePhone varchar (14) not null,
EmployeeZip int not null,
HireDate datetime not null
)

/* EmployeeID - Unique ID

EmployeeLastName

EmployeeFirstName

EmployeePhone formatted (XXX) XXX-XXXX

EmployeeZip

 

HireDate formatted as MM/DD/YYYY

 

Display data sorted ascending by date
*/

---TEST INSERT STATEMENTS--------
use AireSpring
insert into EmployeeInformation values ('Alegria','Juan','(503) 766-5147',1234,'2022-09-01');
insert into EmployeeInformation values ('Rogriguez','Carlos','(503) 712-5047',4567,'2022-09-15');
insert into EmployeeInformation values ('Smith','Chris','(504) 757-4146',4578,'2017-06-15');
insert into EmployeeInformation values ('Valdez','Jorge','(503) 765-3145',1234,'2022-09-01');
insert into EmployeeInformation values ('Garcia','Anthony','(503) 763-2144',1234,'2022-09-01');
insert into EmployeeInformation values ('Jordan','Manuel','(503) 762-1143',1234,'2022-09-01');
insert into EmployeeInformation values ('Quintanilla','Mario','(503) 761-0142',1234,'2022-09-01');


---TEST SELECT STATEMENTS----------
select * from EmployeeInformation

------------------------------------

-----ORDER BY SELECT STATEMENT------
select * from EmployeeInformation order by HireDate asc


------TEST UPDATE STATEMENTS------
---UPDATE BY DATE---
UPDATE EmployeeInformation set HireDate='2015-03-11'  where HireDate='2022-09-01'

----- UPDATE BY EmployeeID (USING IN)------
UPDATE EmployeeInformation set HireDate='2014-04-11'  where EmployeeID in (4,5)

----- UPDATE BY EmployeeID (EQUAL TO)------
UPDATE EmployeeInformation set HireDate='2010-05-14'  where EmployeeID=7

----- UPDATE BY EmployeeID (EQUAL TO)------
UPDATE EmployeeInformation set HireDate='2022-09-01'  where EmployeeID=1

-----END TEST UPDATE STATEMENTS----------



-----TEMP TABLE----
--select * into EmployeeInformationBK from EmployeeInformation
--select * from EmployeeInformation

--INSERT INTO EmployeeInformation
--SELECT 
--       [EmployeeLastName]
--      ,[EmployeeFirstName]
--      ,[EmployeePhone]
--      ,[EmployeeZip]
--      ,[HireDate]
--       FROM [AireSpring].[dbo].[EmployeeInformationBK]
--	   WHERE EmployeeID=3


----END TEMP TABLE----


-----SAMPLE DELETE STATEMENT------

--DELETE FROM EmployeeInformation where EmployeeID=3




