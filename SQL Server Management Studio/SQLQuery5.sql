select * from emp where e_name like 'a%'
select * from emp where e_name like '%a'
select * from emp where e_name like '%a%'
select * from emp where e_name like '%[k-z]%'
select * from emp where e_name like '[abc]%'
select * from emp where e_name like '%[abc]'
select * from emp
order by e_name
select * from emp 
order by salary desc
sp_help emp
select * from emp
--emp sal >30000 &<18000
select * from emp where salary >30000 and salary <35000

--find max sal
select max(salary) from emp

--find total no of emp
select count(*) from emp

--sal less than 15000 & working in it
select * from emp where salary <37000 and d_name= 'it' 

--arrange all emp in desc order
select * from emp
order by salary desc

--sal not in range 20000 &30000
select * from emp where salary ! 20000 to 30000

select top 5* from emp
order by salary desc

select top 2 percent * from emp
order by salary desc

select * from dept
create table dept
(
did int primary key,
dept varchar(20),
loc varchar(10),
)
insert into dept values(1,'aa','del')
insert into dept values(2,'bb','mum')
insert into dept values(3,'cc','pun')
insert into dept values(4,'dd','nsk')
insert into dept values(5,'ee','che')
insert into dept values(6,'ff','guj')

alter table emp
alter table emp add constraint did1_fk foreign key (did)references dept(did)

select emp.*,dept.* from emp inner join dept on dept.did=emp.emp_id
select * from emp

create table Customers
(
customerid int primary key,
customername varchar(30),
age int,
city varchar(20),
state varchar(20),
dob date)
insert into Customers values(1,'ashutosh',25,'pune','maharashtra','1998-4-5')
insert into Customers values(2,'sachin',26,'nsk','maharashtra','1995-4-5')
insert into Customers values(3,'mahesh',22,'del','maharashtra','1999-4-5')
insert into Customers values(4,'akshay',24,'che','maharashtra','1991-4-5')
insert into Customers values(5,'nilesh',21,'aur','maharashtra','1996-4-5')
insert into Customers values(6,'sanket',29,'mum','maharashtra','1997-4-5')
insert into Customers values(7,'pankaj',30,'pune','maharashtra','2001-4-5')
insert into Customers values(8,'manish',25,'pune','maharashtra','1992-4-5')
insert into Customers values(9,'sagar',30,'che','maharashtra','1994-4-5')
insert into Customers values(10,'pratik',25,'pune','maharashtra','1998-4-5')
insert into Customers values(1,'',25,'pune','maharashtra','1998-4-5')
insert into Customers values(1,'ashutosh',25,'pune','maharashtra','1998-4-5')
insert into Customers values(1,'ashutosh',25,'pune','maharashtra','1998-4-5')
insert into Customers values(1,'ashutosh',25,'pune','maharashtra','1998-4-5')
insert into Customers values(1,'ashutosh',25,'pune','maharashtra','1998-4-5')
insert into Customers values(1,'ashutosh',25,'pune','maharashtra','1998-4-5')
insert into Customers values(1,'ashutosh',25,'pune','maharashtra','1998-4-5')
select * from customer
drop table Customers
create table customer
(
cid int primary key,
cname varchar(20),
city varchar(20),
country varchar(20),
dob date,
postalcode int

)
sp_help customer;
insert into customer values(1,'ashutosh','pune','india','1998-04-05',411002)
insert into customer values(2,'sachin','london','uk','1995-4-5',411022)
insert into customer values(23,'mahesh','berlin','jermany','1999-4-5',411222)
insert into customer values(4,'akshay','abc','norway','1991-4-5',422605)
insert into customer values(5,'nilesh','aur','maharashtra','1996-4-5',413714)

--select city from customer
select city from customer

--diff values from city
select distinct city from customer

--3.	Select all records where the City column has the value "London
select * from customer where city = 'london'

--4.	Use the NOT keyword to select all records where City is NOT "Berlin".
select * from customer where Not city= 'berlin'

--5.	Select all records where the CustomerID column has the value 23.
select * from customer where cid=23

--6.	Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 121110.
select * from customer where city ='berlin' and postalcode =411222

--7.	Select all records where the City column has the value 'Berlin' or 'London'.
select * from customer where city ='berlin' or city='london'

--8.	Select all records from the Customers table, sort the result alphabetically by the column City.
select * from customer
Order by city asc

--9.	Select all records from the Customers table, sort the result reversed alphabetically by the column City.
select * from customer 
Order by city desc

--10.	Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City
select * from customer Order by city,country asc

--1111.	Select all records from the Customers where the PostalCode column is empty.
select * from customer where postalcode is null

--12.	Select all records from the Customers where the PostalCode column is NOT empty.
select * from customer where postalcode is not null

--13.	Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".
update customer set city = 'oslo' where country='norway'

--14.	Delete all the records from the Customers table where the Country value is 'Norway'.
delete from customer where country='norway'

create table product1
(pid int primary key,
pname varchar(20),
price int)

--15.	Use the MIN function to select the record with the smallest value of the Price column.
select  from 
create table student
(sid int primary key,
sname varchar(20),
city varchar(20)
)
insert into student values(1,'ram','pune')
insert into student values(2,'sham','mumbai')
insert into student values(3,'sita','pune')
insert into student values(4,'gita','nashik')

create table subjects
(subid int primary key,
subname varchar(20),
maxmarks int,
passing int)

insert into subjects values(1,'maths',100,40)
insert into subjects values(2,'english',100,40)
insert into subjects values(3,'marathi',50,15)
insert into subjects values(4,'hindi',50,15)

create table exam
(
sid int constraint fk_std foreign key(sid) references student(sid),
subid int constraint fk_sub foreign key(subid) references subjects(subid),
marks int
)

insert into exam values(1,1,100)

select * from emp


create database hr

create table regions
(
region_id int primary key,
region_name varchar(25)
)
drop table countries
create table countries
(country_id int primary key,
country_name varchar(40),
region_id int constraint fk_region foreign key(region_id) references regions(region_id))

create table locations
(location_id int primary key,
street_address varchar(25),
postal_code varchar(12),
city varchar(30),
state_province varchar(12),
country_id int constraint fk_country foreign key(country_id) references countries(country_id)
)
create table departments
(department_id int primary key,
dept_name varchar(30),
man_id int,
location_id int constraint fk_loc foreign key(location_id) references locations(location_id)
)

create table employees
(emp_id int primary key,
first_name varchar(20),
last_name varchar(25),
email varchar(25),
ph_no varchar(25),
hiredate date,
job_id int constraint fkj foreign key(job_id) references jobs(job_id)
)


create table jobs
(job_id varchar(10) primary key,
job_title varchar(35),
min_sal int,
max_sal int)


select * from emp where salary=(select avg(salary) from emp)

--max sal
select * from emp where salary=(select max(salary) from emp)

--less than avg sal
select * from emp where salary<(select avg(salary) from emp)

--max sal of each dept
select * from emp where salary in(select max(salary) from emp group by gender)

select * from emp


create database Hr

create table regions
(
region_id int primary key,
region_name varchar(20),
)
create table countries
(
country_id int primary key,
name varchar(20),
region_id int constraint fk_region foreign key(region_id) references regions(region_id)
)

create table locations
(
id int primary key,
street_adress varchar(35),
postal_code varchar(15),
city varchar(15),
state_province varchar(12),
country_id int constraint fk_country foreign key(country_id) references countries(country_id)
)
create table departments
(
departmen_id int primary key,
d_name varchar(20),
manager_id int,
location_id int constraint fk_location foreign key(location_id) references locations(id)
)
create table jobs
(
job_id varchar(20) primary key,
job_title varchar(35),
min_salary int,
max_salary int
)
create table employees
(
id int ,
first_name varchar(25),
last_name varchar(25),
email varchar(25),
phone_no varchar(15),
hire_date varchar(10),
job_id varchar(20) constraint fk_job_id foreign key(job_id) references jobs(job_id),
salary int,
commission_pct int,
manager_id int,
departmen_id int constraint fk_ldepartmen foreign key(departmen_id) references departments(departmen_id)
)

select *from employee where salary<(select avg(salary) from employee)

select * from employee where salary in
(
select max(salary) from employee group by gender
)

select jobs from employees 