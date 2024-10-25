--create FactSales
select 
	od.SalesOrderID, 
	od.SalesOrderDetailID,
	od.OrderQty, 
	od.LineTotal ,
	od.ProductID,
	o.OrderDate, 
	o.DueDate, 
	o.ShipDate , 
	o.TerritoryID, 
	o.ShipMethodID,
	o.SubTotal,
	CAST((od.LineTotal / o.SubTotal) * o.TaxAmt AS DECIMAL(8, 2)) as TaxAmount,
	CAST((od.LineTotal / o.SubTotal) * o.Freight AS DECIMAL(8, 2)) as Freight ,
	CAST((od.LineTotal / o.SubTotal) * o.TotalDue AS DECIMAL(8, 2)) as TotalDue
from 
	Sales.SalesOrderDetail od
	inner join 
	Sales.SalesOrderHeader o
on 
	o.SalesOrderID = od.SalesOrderID
