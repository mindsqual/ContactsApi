CREATE TABLE [Person].[PersonType]
(
	[Id] INT IDENTITY (1, 1) NOT NULL, 
    [Name] NCHAR(50) NOT NULL, 
    [Description] NCHAR(100) NULL,
	CONSTRAINT [PK_PersonType_Id] PRIMARY KEY CLUSTERED ([Id] ASC)
)
