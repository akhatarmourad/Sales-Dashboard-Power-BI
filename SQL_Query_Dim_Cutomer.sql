USE [AdventureWorksDW2022]
GO

SELECT 
	  customer.customerKey AS [Customer Key]
      -- ,customer.GeographyKey
      -- ,customer.CustomerAlternateKey
      -- ,customer.Title
      ,customer.FirstName AS [First Name]
      -- ,customer.MiddleName
      ,customer.LastName AS [Last Name]
	  ,customer.FirstName + ' ' + customer.LastName AS [Full Name]
      -- ,customer.NameStyle
      -- ,customer.BirthDate
      -- ,customer.MaritalStatus
      -- ,customer.Suffix
      ,CASE customer.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender -- Set Condition on gender column
      -- ,customer.EmailAddress
      -- ,customer.YearlyIncome
      -- ,customer.TotalChildren
      -- ,customer.NumberChildrenAtHome
      -- ,customer.EnglishEducation
      -- ,customer.SpanishEducation
      -- customer.FrenchEducation
      -- ,customer.EnglishOccupation
      -- ,customer.SpanishOccupation
      -- ,customer.FrenchOccupation
      -- ,customer.HouseOwnerFlag
      -- ,customer.NumberCarsOwned
      -- ,customer.AddressLine1
      -- ,customer.AddressLine2
      -- ,customer.Phone
      ,customer.DateFirstPurchase AS [Date First Purchase]
      -- ,customer.CommuteDistance
	  ,geo.City AS [Customer City]
  FROM dbo.DimCustomer AS customer
  LEFT JOIN dbo.DimGeography AS geo ON geo.GeographyKey = customer.GeographyKey 
  ORDER BY customer.CustomerKey ASC -- Order results by Customer Key in Ascendent Order
GO


