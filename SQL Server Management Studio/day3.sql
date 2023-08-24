create table emp
(
emp_id int primary key,
e_name varchar(20),
salary int,
d_name varchar(30),
address varchar(100),
designation varchar(25),
gender varchar(10)
)
insert into emp values(1,'abc',10000,'hr','pune','manager','m')
insert into emp values(2,'sanket',25000,'finance','pune','ca','m')
insert into emp values(3,'abcd',30000,'it','pune','developer','f')
insert into emp values(4,'a',10000,'hr','banglore','manager','f')
insert into emp values(5,'nilesh',10000,'hr','pune','manager','m')

--display ename,sal & designation, update sal by 10%of emp from pune city
select e_name,salary,designation from emp update emp set salary=salary+salary/10 where address='pune'

--delete all emp whose sal<20000
delete from emp where salary<20000 and address = 'pune'

--update address of emp whose designation is manager
update emp set address='delhi' where designation='manager'
select * from emp

--display all female emp
select * from emp where gender='f' 






