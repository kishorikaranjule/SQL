/* Create database*/

create database TNSIF_DB;

/*Use databse*/
use TNSIF_DB;

/*Create table */
create table myDatabase
	  (
      Id int primary key,
      Name varchar(30),
      PhoneNo varchar(30),
      Gender varchar(1)
      );

/*Insert data into table*/
insert into myDatabase(
	  Id, Name, PhoneNo,Gender)
      values (1,'Kishori Karanjule','9322054737','F'),
		 (2,'Nikita Kadam','8806172653','F'),
             (3,'Rutuja Sathe ','9844751532','F'),
             (4,'Karishma Karanjule','7896541254','M'),
             (5,'Riya Polade','9658745621','F'),
             (6,'Mansi Bhaskar','8957456321','M'),
             (7,'Pooja Kale','9685759171','F'),
             (8,'Kiya Shelar','9685965475','M')
             ;

/*Display Table Data*/
select * from myDatabase;

/*Add columm in table*/
ALTER TABLE myDatabase
ADD Age int;


/*Update Perticuler data*/
UPDATE myDatabase 
SET age = 21 
WHERE id = 1;

UPDATE myDatabase 
SET age = 22 
WHERE id = 8;


/*AND*/
SELECT * FROM myDatabase
WHERE Age = 22 AND Gender = 'F';

/*OR*/
SELECT Id FROM myDatabase
WHERE Name = 'Kishori Karanjule' OR PhoneNo = '9322054737';

/*NOT*/
SELECT Id FROM myDatabase
WHERE NOT Name = 'Nikita kadam' AND NOT PhoneNo = '8806172653';

/*IN*/
SELECT * FROM myDatabase
WHERE Age IN ('19','20','21');

/*BETWEEN*/
SELECT * FROM myDatabase
WHERE Age BETWEEN 10 AND 20;

/*LIKE*/
SELECT Name FROM myDatabase
WHERE Name LIKE 'N%';

SELECT Name FROM myDatabase
WHERE Name LIKE '%a';

/*ORDER BY*/
SELECT * FROM myDatabase
ORDER BY Name DESC;


/*LIMIT*/
SELECT Id FROM myDatabase
LIMIT 3;

SELECT * FROM myDatabase
WHERE Age='22'
LIMIT 3;