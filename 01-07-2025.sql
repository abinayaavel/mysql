alter table employees
add column increment int not null;

alter table employees
add column incre int not null;

alter table employees
drop column incre;

-- An alias only exists for the duration of that query  (as) -- MaximumSalary

select max(salary) as MaximumSalary
from employees;

select min(salary) as MinimumSalary
from employees;

select count(emp_id)
from employees;

select avg(salary)
from employees;

select sum(salary)
from employees;

use introduction;
select * from employees;

select * from employees
where emp_name like '%a';

select * from employees
where emp_name like '%a%';

select * from employees
where emp_name like 'a%a';

select * from employees
where emp_name like '__i';

select * from employees
where emp_name like 'a%a';

select * from employees
where job_desc like 'a%'limit 3;

select * from employees
where job_desc like 'a%'limit 2  offset 1;

-- Between Syntax
select * from employees
where salary between 1000000 and 2200000;

select * from employees
where salary between 1900000 and 2500000;

select * from employees
where emp_name between 'a%' and 'k%';

select * from employees
where emp_name not between 'a%' and 'k%';

select * from employees
where emp_name not between 'a%' and 'k%'
order by emp_id;

-- IN syntax
select *from employees
where job_desc in('Manager','Analyst');

select *from employees
where job_desc not in('Admin','HR');

select * from employees
where salary between 1000000 and 2000000
and job_desc not in('Analyst');

alter table employees
add column joining_date date;

select * from employees;

update employees
set joining_date = '1996-07-01'
where emp_id=1;

update employees
set joining_date = '1996-07-01'
where emp_id=1;

update employees
set joining_date = '1996-07-30'
where emp_id=2;

update employees
set joining_date = '1992-07-01'
where emp_id=3;


update employees
set joining_date = '1995-08-01'
where emp_id=4;

update employees
set joining_date = '1998-07-28'
where emp_id=5;

update employees
set joining_date = '2003-07-01'
where emp_id=6;

update employees
set joining_date = '1999-02-01'
where emp_id=7;

update employees
set joining_date = '1995-07-07'
where emp_id=8;

update employees
set joining_date = '1996-07-01'
where emp_id=9;

update employees
set joining_date = '1993-07-01'
where emp_id=10;

update employees
set joining_date = '2005-01-01'
where emp_id=11;

update employees
set joining_date = '1997-09-25'
where emp_id=12;

update employees
set joining_date = '1990-02-28'
where emp_id=13;

select * from employees
where joining_date between '1995-01-01' and '2000-01-01';

select * from employees
where joining_date> '2003-01-01';






