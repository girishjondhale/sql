create table book
(
bookid int primary key,
bookname varchar(20),
price int
)
create table author
(authorid int primary key,
authorname varchar(20),
phoneno varchar(10),
email varchar(20),
address varchar(20),
city varchar(20)
) 
create table award
(
awardid int primary key,
awardtypeid int ,
authid int ,constraint authid_fk foreign key(authid) references author(authorid),
bkid int,constraint bkid_fk foreign key(bkid) references book(bookid),
year int
)
create table awardsmastertable
(
awardtypeid int primary key,
awardname varchar(20),
awardprice int
)
