use GoldMine
GO

DECLARE @name nchar(50), @desc nchar(100)
SET @name='Aquaintence'
SET @desc='A single person known by you, the job seeker. Could be: Friend, Person you met while networking, etc.'
IF NOT EXISTS (SELECT * FROM Person.PersonType WHERE Name = @name)
BEGIN
	INSERT INTO Person.PersonType
	VALUES(@name, @desc)
END
--
SET @name='Employer_Decision_Personnel'
SET @desc='A single person working at a potential-employer or organization who is in a decision making capacity.'
IF NOT EXISTS (SELECT * FROM Person.PersonType WHERE Name = @name)
BEGIN
	INSERT INTO Person.PersonType
	VALUES(@name, @desc)
END
--
SET @name='Employer_HR_Personnel'
SET @desc='A single person working for human resources department of an employer or organization.'
IF NOT EXISTS (SELECT * FROM Person.PersonType WHERE Name = @name)
BEGIN
	INSERT INTO Person.PersonType
	VALUES(@name, @desc)
END
--
SET @name='Recruiter'
SET @desc='A single person working for a recruiting agency.'
IF NOT EXISTS (SELECT * FROM Person.PersonType WHERE Name = @name)
BEGIN
	INSERT INTO Person.PersonType
	VALUES(@name, @desc)
END
--
SET @name='Other'
SET @desc='Any type of contact that does not fit into one of the other types.'
IF NOT EXISTS (SELECT * FROM Person.PersonType WHERE Name = @name)
BEGIN
	INSERT INTO Person.PersonType
	VALUES(@name, @desc)
END


/***** For AddressType reference data

*/
SET IDENTITY_INSERT [Person].[AddressType] ON
IF NOT EXISTS (SELECT * FROM [Person].[AddressType] WHERE Name='Billing')
	INSERT INTO [Person].[AddressType] ([AddressTypeID], [Name], [rowguid], [ModifiedDate]) VALUES (1, N'Billing', N'b84f78b1-4efe-4a0e-8cb7-70e9f112f886', GETDATE())
IF NOT EXISTS (SELECT * FROM [Person].[AddressType] WHERE Name='Home')
	INSERT INTO [Person].[AddressType] ([AddressTypeID], [Name], [rowguid], [ModifiedDate]) VALUES (2, N'Home', N'41bc2ff6-f0fc-475f-8eb9-cec0805aa0f2', GETDATE())
IF NOT EXISTS (SELECT * FROM [Person].[AddressType] WHERE Name='Main Office')
	INSERT INTO [Person].[AddressType] ([AddressTypeID], [Name], [rowguid], [ModifiedDate]) VALUES (3, N'Main Office', N'8eeec28c-07a2-4fb9-ad0a-42d4a0bbc575', GETDATE())
IF NOT EXISTS(SELECT * FROM [Person].[AddressType] WHERE Name='Primary')
	INSERT INTO [Person].[AddressType] ([AddressTypeID], [Name], [rowguid], [ModifiedDate]) VALUES (4, N'Primary', N'24cb3088-4345-47c4-86c5-17b535133d1e', GETDATE())
IF NOT EXISTS(SELECT * FROM [Person].[AddressType] WHERE Name='Shipping')
	INSERT INTO [Person].[AddressType] ([AddressTypeID], [Name], [rowguid], [ModifiedDate]) VALUES (5, N'Shipping', N'b29da3f8-19a3-47da-9daa-15c84f4a83a5', GETDATE())
IF NOT EXISTS(SELECT * FROM [Person].[AddressType] WHERE Name='Archive')
	INSERT INTO [Person].[AddressType] ([AddressTypeID], [Name], [rowguid], [ModifiedDate]) VALUES (6, N'Archive', N'a67f238a-5ba2-444b-966c-0467ed9c427f', GETDATE())
SET IDENTITY_INSERT [Person].[AddressType] OFF
