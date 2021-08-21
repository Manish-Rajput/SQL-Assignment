# SQL-Assignment
## **Tables:** 

**Table 1: SalesPeople**

Snum is Primary key <br>
Sname is Unique constraint<br>

Snum Sname City Comm<br>
1001 Peel. London .12<br>
1002 Serres Sanjose .13<br>
1004 Motika London .11<br>
1007 Rifkin Barcelona .15<br>
1003 Axelrod Newyork .10<br>


**Table 2: Customers**

Cnum is Primary Key<br>
City has not null constraint .<br>
Snum is foreign key constraint refers Snum column of SalesPeople table.<br>

**Cnum   Cname     City     Snum**<br>
 2001   Hoffman    London   1001<br>
 2002   Giovanni   Rome     1003<br>
 2003   Liu       Sanjose   1002<br>
 2004   Grass     Berlin    1002<br>
 2006   Clemens   London    1001<br>
 2008   Cisneros  Sanjose   1007<br>
 2007   Pereira    Rome     1004<br>


**Table 3: Orders**<br>

Onum is Primary key<br>
Cnum is foreign key refers to Cnum column of Customers table. Snum is foreign key refers Snum column of SalesPeople table.<br>

**Onum     Amt        Odate     Cnum   Snum**<br>
  3001    18.69     3-10-1990   2008   1007<br>
  3003    767.19    3-10-1990   2001   1001<br>
  3002    1900.10   3-10-1990   2007   1004<br>
  3005    5160.45   3-10-1990   2003   1002<br>
  3006    1098.16   3-10-1990   2008   1007<br>
  3009    1713.23   4-10-1990   2002   1003<br>
  3007    75.75     4-10-1990   2004   1002<br>
  3008    4273.00   5-10-1990   2006   1001<br>
  3010    1309.95   6-10-1990   2004   1002<br>
  3011    9891.88   6-10-1990   2006   1001<br>

**On the basis of above tables perform given below questions:**<br>

1.  Count the number of Salesperson whose name begin with ‘a’/’A’.<br>
2.  Display all the Salesperson whose all orders worth is more than Rs. 2000.<br>
3.  Count the number of Salesperson belonging to Newyork.<br>
4.  Display the number of Salespeople belonging to London and belonging to Paris.<br>
5.  Display the number of orders taken by each Salesperson and their date of orders.<br>
