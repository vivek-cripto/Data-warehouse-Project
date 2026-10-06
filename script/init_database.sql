/* 
==================================================
Creating Database and Schema 
==================================================
Note: 
This script create a DataWarehouse database and three schemas used in data warehouse following the Medallion Architecture:
Bronze — Raw, unprocessed source data
Silver — Cleaned and transformed data
Gold — Business-ready data used for analytics and reporting

Setup:
Create the database using the first SQL command.
Connect to the newly created database in pgAdmin.
Run the schema creation commands.
The project follows the data flow:
Source Data → Bronze → Silver → Gold

*/

USE master;
GO

-- DROP and RECREATE Database 'DataWarehouse'
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

--CREATE the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

--CREATE SCHEMAS
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
