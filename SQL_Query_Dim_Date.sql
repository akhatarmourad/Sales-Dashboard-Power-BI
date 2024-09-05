USE [AdventureWorksDW2022]
GO

-- Cleansed Dim Date Table, Retrieve only relevant & pertinent data

SELECT [DateKey]
      ,[FullDateAlternateKey] AS Date
      -- ,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] AS Day
      -- ,[SpanishDayNameOfWeek]
      -- ,[FrenchDayNameOfWeek]
      -- ,[DayNumberOfMonth]
      -- ,[DayNumberOfYear]
      ,[WeekNumberOfYear] AS WeekNo
      ,[EnglishMonthName] AS Month
	  ,LEFT([EnglishMonthName], 3) AS MonthShort -- takes the first 3 characters from the value
      -- ,[SpanishMonthName]
      -- ,[FrenchMonthName]
      ,[MonthNumberOfYear] AS MonthNo
      ,[CalendarQuarter] AS Quarter
      ,[CalendarYear] AS Year
      -- ,[CalendarSemester]
      -- ,[FiscalQuarter]
      -- ,[FiscalYear]
      -- ,[FiscalSemester]
  FROM [dbo].[DimDate]
  WHERE CalendarYear >= 2012
GO


