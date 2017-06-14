CREATE SCHEMA [Organization]

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Contains objects related to organizations: enterprises, businesses, companies.', @level0type = N'SCHEMA', @level0name = N'Organization';