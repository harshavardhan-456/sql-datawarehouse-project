/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/


USE master;
GO

--Drop and Re-Create the 'datawarehouse' database if exist---
IF EXISTS(SELECT 1 FROM sys.databases WHERE name= 'datawarehouse')
BEGIN
  ALTER DATABASE datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE datawarehouse;
END;
GO

--Create Database 'datawarehouse'--
CREATE DATABASE datawarehouse;
GO
  
--use the database---
USE datawarehouse;

--Create Schemas 'Bronze', 'Silver', 'Gold'-----
CREATE SCHEMA Bronze;
GO

--Schema-
CREATE SCHEMA Silver;
Go

--Schema--
CREATE SCHEMA Gold;
GO
