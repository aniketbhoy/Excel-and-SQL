show databases;
use mysql;
show tables;
select * from component;
create table Persons
(PersonID int,
FirstName varchar(255),
LastName varchar(255),
City varchar(255));
select * from Persons;
insert into Persons
VALUES(1, 'Gautam', 'Gambhir', 'Delhi');
select * from Persons;
insert into Persons
VALUES(2, 'Virat', 'Kohli', 'Delhi');
insert into Persons
VALUES(3, 'Rohit', 'Sharma', 'Mumbai');
insert into Persons
VALUES(4, 'Hardik', 'Pandya', 'Mumbai');
select * from Persons;
select * from Persons where city='Delhi';
select FirstName from Persons;