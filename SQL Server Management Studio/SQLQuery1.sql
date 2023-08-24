create table author
(
authorid int primary key,
name varchar(20) not null,
city varchar(20),
country varchar(20)
)

create table category
(
category_id int primary key,
discription varchar(20),
)


create table book
(
bookid int primary key,
title varchar(20) not null,
autherid int foreign key(autherid) references author(authorid),
category_id int foreign key(category_id) references category(category_id),
year int not null,
price int not null,
publisher varchar(20) not null,
ratings int not null
)
create table order_details
(
orderno int primary key,
bkid int foreign key(bkid) references book(bookid)
)
sp_help order_details
