UPDATE Person.AddressType
SET ModifiedDate = GETDATE()
WHERE AddressTypeID=1

INSERT INTO GoldMine.Person.BusinessEntity (rowguid, [ModifiedDate])
Select 
	--BusinessEntityID, 
	NEWID(),
	GETDATE()
FROM AdventureWorks_Full.Person.BusinessEntity
WHERE BusinessEntityID < 11

DELETE GoldMine.Person.BusinessEntity 
USE GoldMine
DBCC CHECKIDENT ('[Person].[BusinessEntity]', RESEED, 0);
GO