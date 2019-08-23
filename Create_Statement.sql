--Truncate table Person cascade

--Select * from Person
--Create table for Person tables 
CREATE Table person (
personid INT Primary Key,
title Varchar(8) ,
firstname varchar(50),
middlename varchar(50),
lastname varchar(50),
suffix varchar(10),
contacttype varchar(50),
totalpurchaseytd decimal(9,2)
);

---Create table for Store
Create table store(
storename varchar(50),
businessentityid int REFERENCES Person(Personid) ,
annualsales int,
annualrevenue int ,
bankname varchar(50),
businesstype varchar(10),
yearopened int ,
specialty varchar(50) ,
squareFeet int ,
brands varchar(10),
internet varchar(50),
numberemployees int 
);
-- Create table email
Create table email(
personid INT REFERENCES Person(PersonId),
emailaddress varchar(50)
);
-- Create table Phone 
Create table phone(
personid INT REFERENCES Person(PersonId),
phonenumber varchar(25),
phonenumbertype   varchar(15)

);
