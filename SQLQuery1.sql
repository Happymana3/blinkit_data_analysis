--select * from [HumanResources].[Employee] 
/* select *
from HumanResources.Employee
order by JobTitle asc */

/* select *
from Person.Person as person
order by LastName */

/* select FirstName, LastName, businessentityid as EmployeeID
from Person.Person as p
order by p.LastName */

/*Select productid, productnumber, name
From production.Product
where sellstartdate is not null and productLine='T'
order by name */

/* select salesorderid, customerid, orderdate, sum(SubTotal) as subtotal , sum(TaxAmt)/sum(SubTotal)*100 as percentage_of_tax
from Sales.SalesOrderHeader
group by salesorderid, customerid, orderdate
order by  sum(SubTotal) desc */

/* select DISTINCT JobTitle
from HumanResources.Employee
order by JobTitle */

-- From the following table write a query in SQL to calculate the total freight paid by each customer. Return customerid and total freight. Sort the output in ascending order on customerid.  Go to the editor
--Sample table: sales.salesorderheader

/* select CustomerID, sum(Freight) as total_freight
from sales.salesorderheader as soh
group by CustomerID
order by CustomerID */

-- From the following table write a query in SQL to find the average and the sum of the subtotal for every customer. Return customerid, average and sum of the subtotal. Grouped the result on customerid and salespersonid. Sort the result on customerid column in descending order.  Go to the editor
--Sample table: sales.salesorderheader 

/* select soh.CustomerID, soh.SalesPersonID, avg(SubTotal) as Avg_subtotal, sum(SubTotal) as sum_total
from sales.salesorderheader as soh
group by soh.CustomerID,soh.SalesPersonID
order by soh.CustomerID desc */






