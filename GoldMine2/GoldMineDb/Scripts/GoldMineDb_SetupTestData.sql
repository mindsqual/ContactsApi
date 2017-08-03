/*
Setting up test data.
Getting reference data (eg CountryRegion, StateProvince) from AdventureWorks_Full.
want to check the number of records in each and only run INSERT if empty.
*/

DECLARE @numRecords int  -- used for each test.

Print N'Checking reference data....'
Print N'.......................................'
--------- StateProvince -------------------------
SET @numRecords = (SELECT COUNT(*)FROM GoldMine.Person.StateProvince)
IF @numRecords < 1
BEGIN
	PRINT 'Records being inserted into Person.StateProvince'
	Print N'.......................................'
	Insert into GoldMine.Person.StateProvince (
		[StateProvinceCode],
		[CountryRegionCode],
		[IsOnlyStateProvinceFlag],
		[Name],
		[TerritoryID],
		[rowguid],
		[ModifiedDate] )
	SELECT --* 
		[StateProvinceCode],
		[CountryRegionCode],
		[IsOnlyStateProvinceFlag],
		[Name],
		[TerritoryID],
		[rowguid],
		[ModifiedDate]
	FROM Adventureworks_Full.Person.StateProvince 
END
ELSE IF @numRecords > 1
BEGIN
	PRINT CONVERT(nvarchar(10),@numRecords) + N' records in GoldMine.Person.StateProvince table. No records will be inserted.'
END
select count(*) from GoldMine.Person.StateProvince

------------- Country Region --------------------------------
INSERT INTO GoldMine.Person.CountryRegion --([CountryRegionCode],[Name], [ModifiedDate]) 
SELECT  [CountryRegionCode],[Name], [ModifiedDate]  
FROM Adventureworks_Full.Person.CountryRegion

set @numRecords = (select count(*) from person.CountryRegion)
PRINT @numRecords 