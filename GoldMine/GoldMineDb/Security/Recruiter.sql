CREATE SCHEMA [Recruiter]
    AUTHORIZATION [dbo];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Contains objects related to head hunter or recruiting agencies, and manufacturing.', @level0type = N'SCHEMA', @level0name = N'Recruiter';