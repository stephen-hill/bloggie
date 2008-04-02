CREATE TABLE uContent (
	CO_ID int identity(1,1) UNIQUE NOT NULL, 
	CO_Created datetime DEFAULT getdate() NOT NULL, 
	CO_Updated datetime, 
	CO_Name varchar(128) NOT NULL, 
	CO_Text text NOT NULL, 
	PRIMARY KEY(CO_ID));

CREATE TABLE uTags (
	TA_ID int identity(1,1) UNIQUE NOT NULL, 
	TA_Object int NOT NULL, 
	TA_Name varchar(128) NOT NULL, 
	TA_Table varchar(32) NOT NULL, 
	PRIMARY KEY(TA_ID));

CREATE TABLE sSettings (
	SE_ID int identity(1,1) UNIQUE NOT NULL, 
	SE_Version decimal(4,2), 
	PRIMARY KEY(SE_ID));

CREATE TABLE uFiles (
	DA_ID int identity(1,1) UNIQUE NOT NULL, 
	DA_Created datetime DEFAULT getdate() NOT NULL, 
	DA_Updated datetime, 
	DA_Name varchar(128) UNIQUE NOT NULL, 
	DA_Filename varchar(256) NOT NULL, 
	DA_Type varchar(128), 
	PRIMARY KEY(DA_ID));

CREATE TABLE sLists (
	LI_ID int identity(1,1) UNIQUE NOT NULL, 
	LI_Created datetime DEFAULT getdate() NOT NULL, 
	LI_Updated datetime, 
	LI_Name varchar(16) NOT NULL, 
	LI_Text text, 
	PRIMARY KEY(LI_ID));

CREATE TABLE sListEntriesName (
	LE_ID int identity(1,1) UNIQUE NOT NULL, 
	LE_List int NOT NULL, 
	LE_Created datetime DEFAULT getdate() NOT NULL, 
	LE_Updated datetime, 
	LE_Column1 datatype, 
	LE_Column2 datatype, 
	LE_Column3 datatype, 
	LE_Column4 datatype, 
	PRIMARY KEY(LE_ID));

CREATE TABLE uLists (
	LI_ID int identity(1,1) UNIQUE NOT NULL, 
	LI_Created datetime DEFAULT getdate() NOT NULL, 
	LI_Updated datetime, 
	LI_Name varchar(16) NOT NULL, 
	LI_Text text, 
	PRIMARY KEY(LI_ID));

CREATE TABLE uListEntriesName (
	LE_ID int identity(1,1) UNIQUE NOT NULL, 
	LE_List int NOT NULL, 
	LE_Created datetime DEFAULT getdate() NOT NULL, 
	LE_Updated datetime, 
	LE_Column1 datatype, 
	LE_Column2 datatype, 
	LE_Column3 datatype, 
	LE_Column4 datatype, 
	PRIMARY KEY(LE_ID));

CREATE TABLE sPages (
	PA_ID int identity(1,1) UNIQUE NOT NULL, 
	PA_Created datetime DEFAULT getdate() NOT NULL, 
	PA_Updated datetime, 
	PA_Name varchar(128) UNIQUE NOT NULL, 
	PRIMARY KEY(PA_ID));

