USE [AdventureWorksDW2022]
GO

SELECT [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
      -- ,[PromotionKey]
      -- ,[CurrencyKey]
      -- ,[SalesTerritoryKey]
      ,[SalesOrderNumber]
      -- ,[SalesOrderLineNumber]
      -- ,[RevisionNumber]
      -- ,[OrderQuantity]
      -- ,[UnitPrice]
      -- ,[ExtendedAmount]
      -- ,[UnitPriceDiscountPct]
      -- ,[DiscountAmount]
      -- ,[ProductStandardCost]
      -- ,[TotalProductCost]
      ,[SalesAmount]
      -- ,[TaxAmt]
      -- ,[Freight]
      -- ,[CarrierTrackingNumber]
      -- ,[CustomerPONumber]
      -- ,[OrderDate]
      -- ,[DueDate]
      -- ,[ShipDate]
  FROM [dbo].[FactInternetSales]
  WHERE LEFT(OrderDateKey, 4) >= 2012
  ORDER BY OrderDateKey ASC

GO


