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

--creating database: DataWarehouse
CREATE DATABASE Datawarehouse;

--PostgreSQL doesn't support CREATE DATABASE IF NOT EXISTS, but schemas do:
CREATE SCHEMA IF NOT EXISTS bronze;
CREATE SCHEMA IF NOT EXISTS silver;
CREATE SCHEMA IF NOT EXISTS gold;
