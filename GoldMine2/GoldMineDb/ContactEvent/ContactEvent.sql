CREATE TABLE [JobSearch].[ContactEvent]
(
	[ContactEventID] INT NOT NULL PRIMARY KEY,
	[Date] DateTime NOT NULL,
	[Subject] VARCHAR(100) NULL,
	[BusinessEntityContactID] INT NOT NULL, --BusinessEntityId for Organization
	[PersonID]         INT              NOT NULL,
    [ContactTypeID]    INT              NOT NULL,
    CONSTRAINT [FK_ContactEvent_BusinessEntityContact_BusinessEntityID] FOREIGN KEY ([BusinessEntityContactID], [PersonID], [ContactTypeID]) REFERENCES [Person].[BusinessEntityContact]([BusinessEntityID], [PersonID], [ContactTypeID]))
