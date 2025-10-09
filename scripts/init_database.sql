/*
========================================
Create Database and schemas
========================================
Script purpose:
	This script creates a database named 'DataWarehouse' after checking if it already exists.
	If the database exists,it is dropped and recreated.Additionally the script sets up three schemas
	within database 'bronze','silver', and 'gold'.

Warning:
	Running all scripts will drop the entire 'DataWarehouse' database if it exists.
	All data in the database will be permanently deleted.Proced with caution
	and ensure you have proper backups before running this script.
*/

USE master;

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
Go

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
