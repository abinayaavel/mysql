use introduction;
alter table employees add column (

emp_name varchar(20),
job_desc varchar(20),
salary int);

use introduction;

insert into employees values (3,'daya','sales',2000000);
insert into employees values(5,'Ramya','HR',2000000);
insert into employees values(6,'ashok','Manager',3000000);
insert into employees values(7,'abdul','HR',2000000);
insert into employees values(8,'Ramya','engineer',1000000);
insert into employees values(9,'Raghu','CEO',8000000);
insert into employees values(10,'arvind','Manager',2800000);
insert into employees values(11,'akshay','engineer',1000000);
insert into employees values(12,'john','Admin',2200000);
insert into employees values(13,'abinayaa','engineer',2100000);
insert into employees values(4,'abi','engineer',1900000);


select emp_name from employees
where emp_name<>"ramya";

select * from employees 
where salary>2600000 and job_desc="Manager";

select * from employees 
where job_desc in ("admin", "engineer");

select * from employees 
where job_desc not in ("hr", "manager");

select * from employees 
where salary between 2000000 and 3000000
limit 6;

select * from employees 
where emp_name like '__i';

update employees
set job_desc ='Analyst'
where job_desc='engineer';

select distinct job_desc from employees;

-- orderby

select * from employees
where salary>2600000
order by salary desc;

select * from employees
order by ( case job_desc
when 'CEO'then 1
when 'manager' then 2
when 'hr' then 3 
else 100 end
);
