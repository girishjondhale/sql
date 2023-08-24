create table product(
id int primary key identity(1,1),
description varchar(200)
)




create table Traceproduct(
id int primary key identity(1,1),
description varchar(200)
)
-- magic table
-- Inserted
-- Updated 
–deleted

insert
create trigger tr_Product_Insert
on Product after insert
as begin
declare @id int;
declare @name varchar(20);
declare @price int;
select @id=id,@name=name,@price=price from inserted
insert into Traceproduct values('new recored add '+cast(@id as varchar)+' name='+
@name+' price='+cast(@price as varchar)+' date ='+cast (GETDATE()as varchar))
end

delete

create trigger tr_Product_Delete
on Product after delete
as begin
declare @id int;
declare @name varchar(20);
declare @price int;
select @id=id,@name=name,@price=price from deleted
insert into Traceproduct values('record delete '+cast(@id as varchar)+' name='+
@name+' price='+cast(@price as varchar)+' date ='+cast (GETDATE()as varchar))
end

delete from product where id=4




-- case ... when .. then  in SQL
-- check the condition if condition then assign some value / do some task

select * from product

select id,name,price,
case
when price>1000 then 'most expensive'
when price<1000 then 'less expensive'
end as 'Remark'
from product

select * from Orders

select orderid,customerid,
case
when deliverydate is null then 'Not delivered yet'
when deliverydate is not null then cast(deliverydate as varchar)
end as 'deliverydate'
from Orders


