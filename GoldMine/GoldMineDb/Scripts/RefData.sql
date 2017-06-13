USE GoldMine
GO


DECLARE @name nchar(30), @desc nchar(100)

SET @name='Aquaintence'
SET @desc='A single person known by you, the job seeker. Could be: Friend, Person you met while networking, etc.'

IF NOT EXISTS (SELECT * FROM Person.PersonType WHERE Name = @name)
BEGIN
	INSERT INTO Person.PersonType
	VALUES(@name, @desc)
END
--
SET @name='Employer_Decision_Personnel'
SET @desc='A single person working at a potential employer who is in a decision making capacity.'
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

--TRUNCATE TABLE Person.PersonType