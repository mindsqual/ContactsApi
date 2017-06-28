CREATE TABLE [dbo].[ContactEvent]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[StartTime] DateTime NOT NULL,
	[EndTime] DateTime NOT NULL,
	[Subject] VARCHAR(100) NULL,
	[OrganizationId] INT NULL, --BusinessEntityId for Organization
	[PersonId] INT NOT NULL -- There must be a person associated with a contact event.
)
