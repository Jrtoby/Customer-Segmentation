--Creating a new database 'Online retail'
CREATE DATABASE OnlineRetailDB;
GO
USE OnlineRetailDB;

--creating a table to match the dataset structure
CREATE TABLE OnlineRetail(
             InvoiceNo NVARCHAR(20),
			 StockCode NVARCHAR(20),
			 Description NVARCHAR(200),
			 Quantity INT,
			 InvoiceDate DATETIME,
			 UnitPrice FLOAT,
			 CustomerID INT,
			 Country NVARCHAR(100)
);
