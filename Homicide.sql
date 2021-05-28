-- Database: Homicide

-- DROP DATABASE Homicide;

CREATE DATABASE Homicide_project
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
DROP TABLE homicide;
-- setup table by listing all items in csv so that it can be pulled
CREATE TABLE homicide(
	Record_ID INT,
	Agency_Code_Agency_Name	VARCHAR,
	Agency_Type_City VARCHAR,
	State_ VARCHAR,
	Year_ DATE,
	Month_ VARCHAR,
	Incident VARCHAR,	
	Crime_Type VARCHAR,
	Victim_Ethnicity VARCHAR,	
	Perpetrator_Sex	VARCHAR,
	Perpetrator_Age INT,	
	Perpetrator_Race VARCHAR,
	Perpetrator_Ethnicity VARCHAR,	
	Relationship VARCHAR,
	WeaponVARCHAR VARCHAR,
	Victim_Count INT,	
	Perpetrator_Count INT,	
	Record_Source VARCHAR
);

-- select where to get employee info from
SELECT * FROM homicide;

--pull employee info from csv file
SELECT
	State_,
	Year_,
	Month_,
	Incident,	
	Crime_Type,
	Victim_Ethnicity,	
	Perpetrator_Sex,
	Perpetrator_Age,	
	Perpetrator_Race,
	Perpetrator_Ethnicity,	
	Relationship,
	Weapon,
FROM homicide;

--INSERT INTO info to make table
CREATE TABLE Perpetrator_info(
	Perpetrator_Sex	VARCHAR,
	Perpetrator_Age INT,	
	Perpetrator_Race VARCHAR,
	Perpetrator_Ethnicity VARCHAR,	
	Relationship VARCHAR,
);

--INSERT INTO info to make table
CREATE TABLE Incident_info(
	Agency_Type_City VARCHAR,
	State_ VARCHAR,
	Year_ DATE,
	Month_ VARCHAR,
	Incident VARCHAR,	
	Crime_Type VARCHAR,
	Victim_Ethnicity VARCHAR,
);SELECT * FROM salaries;


-- select where to get education info from
SELECT * FROM universities_ranking;


--pull education info from csv file
SELECT
	University_Name	
	IPEDS_ID	
	State_	
	_2021 INT,
	_2020 INT,
	_2019 INT,
	_2018 INT,	
	_2017 INT,
	_2016 INT,
	_2015 INT,
	_2014 INT,
	_2013 INT,	
	_2012 INT,
	_2011 INT,	
	_2010 INT,	
	_2009 INT,	
	_2008 INT,	
	_2007 INT,	
	_2006 INT,	
	_2005 INT,	
	_2004 INT,	
	_2003 INT,	
	_2002 INT,	
	_2001 INT,	
	_2000 INT,
	_1999 INT,
	_1998 INT,	
	_1997 INT,	
	_1996 INT,
	_1995 INT,	
	_1994 INT,
	_1993 INT,	
	_1992 INT,	
	_1991 INT,	
	_1990 INT,	
	_1989 INT,	
	_1988 INT,	
	_1986 INT,	
	_1984 INT
);

FROM universities_ranking;


-- join location of homicide with universities ranking table
SELECT homicide.state, homicide.year, homicide.state, homicide.state, homicide.state
FROM salaries
INNER JOIN state_ ON homicide.state=universities_ranking.state








