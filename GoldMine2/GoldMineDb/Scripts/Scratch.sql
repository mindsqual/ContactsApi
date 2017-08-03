--'C:\Users\bP\Source\Repos\ContactsApi\GoldMine2\GoldMineDb\Scripts\'


BULK INSERT [Person].[Address] 
FROM 'C:\Learning\AW_DBs\2014\Scripts\Address.csv'
WITH (
    --CHECK_CONSTRAINTS,
    CODEPAGE='ACP',
    DATAFILETYPE = 'char',
    FIELDTERMINATOR= '\t',
    ROWTERMINATOR = '\n',
    KEEPIDENTITY,
    TABLOCK
);


PRINT 'Loading [Person].[PhoneNumberType]';

BULK INSERT [Person].[PhoneNumberType] FROM 'C:\Learning\AW_DBs\2014\Scripts\PhoneNumberType.csv'
WITH (
    --CHECK_CONSTRAINTS,
    CODEPAGE='ACP',
    DATAFILETYPE='widechar',
    FIELDTERMINATOR='+|',
    ROWTERMINATOR='&|\n',
    KEEPIDENTITY,
    TABLOCK
);