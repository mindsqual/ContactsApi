CREATE SCHEMA [JobSearch]
	AUTHORIZATION [dbo];

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Contains objects related to job search activity events.', @level0type = N'SCHEMA', @level0name = N'JobSearch';