 show databases;
 create database introduction;

 use introduction;
 
 create table student(
 
 id int primary key,
 name varchar(20),
 cgpa decimal(3,2)
 
 );
 
 show tables;
describe student;
  
alter table student add department varchar(10);

insert into student values(2, "durga",8.5,"ece"),
(3, "annalakshi",8.3,"ece"),
(4, "arjun",7.2,"ece"),
(5, "suganya",6.9,"cse");

insert into student(id,name,department) values(6,"rahul","ei");
use introduction;
select * from student;

update student
set name = 'annalakshmi'
where name = 'annalakshi';


delete from student
where name='rahul';

