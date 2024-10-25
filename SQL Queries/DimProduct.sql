--Create DimProduct
select 
	p.ProductID , p.Name as Product, sc.Name as SubCategory, c.Name as Category
FROM
	Production.Product p 
	INNER JOIN 
	Production.ProductSubcategory sc
on
	sc.ProductSubcategoryID = p.ProductSubcategoryID
    INNER JOIN 
	Production.ProductCategory c 
on 
	c.ProductCategoryID = sc.ProductCategoryID