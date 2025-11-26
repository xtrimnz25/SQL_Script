
-- Created by GitHub Copilot in SSMS - review carefully before executing
USE AdventureWorks2008R2;
GO

SELECT
    p.ProductID,
    p.Name                      AS ProductName,
    p.ProductNumber,
    p.Color,
    p.Size,
    p.Weight,
    p.ProductLine,
    p.Class,
    p.Style,
    p.StandardCost,
    p.ListPrice,
    (p.ListPrice - p.StandardCost) AS PriceMargin,
    p.SellStartDate,
    p.SellEndDate,
    p.DiscontinuedDate,
    ps.Name                     AS SubcategoryName,
    pm.Name                     AS ModelName,
    p.ModifiedDate
FROM Production.Product AS p
LEFT JOIN Production.ProductSubcategory AS ps
    ON p.ProductSubcategoryID = ps.ProductSubcategoryID
LEFT JOIN Production.ProductModel AS pm
    ON p.ProductModelID = pm.ProductModelID
ORDER BY p.ProductID;