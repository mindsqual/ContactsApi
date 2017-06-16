--SET ANSI_NULLS ON
--GO

--SET QUOTED_IDENTIFIER ON
--GO

CREATE TABLE [Organization].[Company]
(
	[BusinessEntityID] INT NOT NULL PRIMARY KEY, 
    [Name] NVARCHAR(50) NULL, 
    [ContactPersonId] INT NULL, 
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
	[ModifiedDate] DateTime NOT NULL
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [AK_Company_rowguid]
    ON [Organization].[Company]([rowguid] ASC);
GO

--CREATE NONCLUSTERED INDEX [IX_Company_ContactPersonID]
--    ON [Organization].[Company]([ContactPersonId] ASC);
--GO
--ALTER TABLE [Organization].[Company]
--    ADD CONSTRAINT [PK_Store_BusinessEntityID] PRIMARY KEY CLUSTERED ([BusinessEntityID] ASC);
--GO
/*
USE [AdventureWorks_Full]
GO

/****** Object: Table [Sales].[Store] Script Date: 6/13/2017 9:12:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Sales].[Store] (
    [BusinessEntityID] INT                                                NOT NULL,
    [Name]             [dbo].[Name]                                       NOT NULL,
    [SalesPersonID]    INT                                                NULL,
    [Demographics]     XML(CONTENT [Sales].[StoreSurveySchemaCollection]) NULL,
    [rowguid]          UNIQUEIDENTIFIER                                   ROWGUIDCOL NOT NULL,
    [ModifiedDate]     DATETIME                                           NOT NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Store_rowguid]
    ON [Sales].[Store]([rowguid] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Store_SalesPersonID]
    ON [Sales].[Store]([SalesPersonID] ASC);


GO
ALTER TABLE [Sales].[Store]
    ADD CONSTRAINT [PK_Store_BusinessEntityID] PRIMARY KEY CLUSTERED ([BusinessEntityID] ASC);


GO
ALTER TABLE [Sales].[Store]
    ADD CONSTRAINT [FK_Store_BusinessEntity_BusinessEntityID] FOREIGN KEY ([BusinessEntityID]) REFERENCES [Person].[BusinessEntity] ([BusinessEntityID]);


GO
ALTER TABLE [Sales].[Store]
    ADD CONSTRAINT [FK_Store_SalesPerson_SalesPersonID] FOREIGN KEY ([SalesPersonID]) REFERENCES [Sales].[SalesPerson] ([BusinessEntityID]);


GO
ALTER TABLE [Sales].[Store]
    ADD CONSTRAINT [DF_Store_rowguid] DEFAULT (newid()) FOR [rowguid];


GO
ALTER TABLE [Sales].[Store]
    ADD CONSTRAINT [DF_Store_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];



*/
