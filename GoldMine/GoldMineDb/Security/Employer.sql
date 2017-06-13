CREATE SCHEMA [Employer]
    AUTHORIZATION [dbo];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Contains objects related to hiring companies.', @level0type = N'SCHEMA', @level0name = N'Employer';

