USE AdventureWorks2008R2; 
GO 
SELECT
p.ProductID,
p.Name AS ProductName 
FROM 
	Production.Product AS p 
ORDER BY 
	p.ProductID;