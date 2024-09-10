USE [AdventureWorksDW2022]
GO

SELECT product.ProductKey AS [Product Key]
      ,product.ProductAlternateKey AS [Alternate Key]
      -- ,[ProductSubcategoryKey]
      -- ,[WeightUnitMeasureCode]
      -- ,[SizeUnitMeasureCode]
      ,product.EnglishProductName AS Name
      -- ,[SpanishProductName]
      -- ,[FrenchProductName]
      -- ,[StandardCost]
      -- ,[FinishedGoodsFlag]
      ,product.Color
      -- ,[SafetyStockLevel]
      -- ,[ReorderPoint]
      -- ,[ListPrice]
      ,product.Size
      -- ,[SizeRange]
      -- ,[Weight]
      -- ,[DaysToManufacture]
      ,product.ProductLine AS [Product Line]
      -- ,[DealerPrice]
      -- ,[Class]
      -- ,[Style]
      ,product.ModelName AS Model
      -- ,[LargePhoto]
      ,product.EnglishDescription AS Description
      -- ,[FrenchDescription]
      -- ,[ChineseDescription]
      -- ,[ArabicDescription]
      -- ,[HebrewDescription]
      -- ,[ThaiDescription]
      -- ,[GermanDescription]
      -- ,[JapaneseDescription]
      -- ,[TurkishDescription]
      -- ,[StartDate]
      -- ,[EndDate]
      ,ISNULL(product.Status, 'Outdated') AS [Product Status]
	  ,productSubCateg.EnglishProductSubcategoryName AS [Sub Category]
	  ,productCateg.EnglishProductCategoryName AS [Category]
  FROM [dbo].[DimProduct] AS product
  LEFT JOIN dbo.DimProductSubcategory AS productSubCateg ON productSubCateg.ProductSubcategoryKey = product.ProductSubcategoryKey
  LEFT JOIN dbo.DimProductCategory AS productCateg ON productCateg.ProductCategoryKey = productSubCateg.ProductCategoryKey
  ORDER BY product.ProductKey ASC

GO


