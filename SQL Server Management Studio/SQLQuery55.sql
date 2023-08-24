use a2
create table Category
(
cid int primary key identity(1,1),
cname varchar(20)
)

create table Product
(
id int primary key identity(1,1),
name varchar(20),
price int,
cid int,
constraint fk_Cate_Prod foreign key(cid) references Category(cid)
)

insert into Category values('Furniture')
insert into Category values('Electronics')
insert into Category values('Mobile')
insert into Category values('Home Needs')

select * from Category
select * from Product

create table Department
(
did int primary key identity(1,1),
dname varchar(20)
)

create table Employee
(
id int primary key identity(1,1),
name varchar(20),
sal int,
did int,
constraint fk_Emp foreign key(did) references Department(did)
)

select * from Employee
select * from Department

insert into Department values('hr')
insert into Department values('admin')
insert into Department values('development')
insert into Department values('finance')