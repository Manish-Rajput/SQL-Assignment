create database assignment;

use assignment;

CREATE TABLE SalesPeople (
    Snum int,
    Sname varchar(255),
    City varchar(255),
    Comm int,
    PRIMARY KEY (Snum),
    unique (Sname)
);

insert into SalesPeople (Snum,Sname,City,Comm)
values (1001, 'Peel', 'London', 12), (1002, 'Serres', 'Sanjose', 13),
(1004, 'Motika', 'London', 11), (1007, 'Rifkin', 'Barcelona', 15),
(1003, 'Axelrod', 'Newyork', 10);

select * from SalesPeople;

CREATE TABLE Customers (
    Cnum int,
    Cname varchar(255),
    City varchar(255) not null,
    Snum int,
    PRIMARY KEY (Cnum),
    FOREIGN KEY (Snum) REFERENCES SalesPeople(Snum)
);

insert into Customers (Cnum, Cname, City, Snum)
values (2001, 'Hoffman', 'London', 1001), (2002, 'Giovanni', 'Rome', 1003),
(2003, 'Liu', 'Sanjose', 1002), (2004, 'Grass', 'Berlin', 1002),
(2006, 'Clemens', 'London', 1001), (2008, 'Cisneros', 'Sanjose', 1007),
(2007, 'Pereira', 'Rome', 1004);

CREATE TABLE Orders (
    Onum int,
    Amt float,
    Odate varchar(255),
    Cnum int,
    Snum int,
    PRIMARY KEY (Onum),
    FOREIGN KEY (Snum) REFERENCES SalesPeople(Snum)
);

insert into Orders (Onum, Amt, Odate, Cnum, Snum)
values (3001, 18.69, '3-10-1990', 2008, 1007), (3003, 767.19, '3-10-1990', 2001, 1001),
(3002, 1900.10, '3-10-1990', 2007, 1004),(3005, 5160.45, '3-10-1990', 2003, 1002),
(3006, 1098.16, '3-10-1990', 2008, 1007), (3009, 1713.23, '4-10-1990', 2002, 1003),
(3007, 75.75, '4-10-1990', 2004, 1002), (3008, 4273.00, '5-10-1990', 2006, 1001),
(3010, 1309.95, '6-10-1990', 2004, 1002), (3011, 9891.88, '6-10-1990', 2006, 1001);

-- Count the number of Salesperson whose name begin with ‘a’/’A’
select count(distinct Sname) 
from SalesPeople
where Sname like 'a%' or Sname like 'A%';

-- Display all the Salesperson whose all orders worth is more than Rs. 2000
select Sname
from SalesPeople
where Snum in (select Snum
from Orders
where Amt > 2000);

-- Count the number of Salesperson belonging to Newyork
select count(Sname)
from SalesPeople
where City = 'Newyork';

-- Display the number of Salespeople belonging to London and belonging to Paris
select count(Sname)
from SalesPeople
where City = 'London' and City = 'Paris';

-- Display the number of orders taken by each Salesperson and their date of orders
select Snum, Odate
from Orders
order by Snum;