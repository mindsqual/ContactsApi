-- Set path to files

:setvar SampleDataPath "C:\Users\bP\Source\Repos\ContactsApi\GoldMine2\GoldMineDb\Scripts\"
-- ******************************************************
-- Load data
-- ******************************************************
PRINT '';
PRINT '*** Loading Data';
GO

PRINT 'Loading [Person].[Address]';

BULK INSERT [Person].[Address] FROM 'C:\Users\bP\Source\Repos\ContactsApi\GoldMine2\GoldMineDb\Scripts\Address.csv'
WITH (
    CHECK_CONSTRAINTS,
    CODEPAGE='ACP',
    DATAFILETYPE = 'widechar',
    FIELDTERMINATOR= '\t',
    ROWTERMINATOR = '\n',
    KEEPIDENTITY,
    TABLOCK
);
