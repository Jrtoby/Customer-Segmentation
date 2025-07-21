--DATA CLEANING (missing values and data type conversion)
--Retrieving data from the onlineRetail table
SELECT 
     *
	 FROM OnlineRetail;

--list of all unsual codes
SELECT StockCode,
       COUNT(*) AS Occurrances
FROM OnlineRetail
GROUP BY StockCode
ORDER BY COUNT(*) DESC;

--Creating a filter list for data inconsistencies in stockcode column
SELECT
     *
	 FROM OnlineRetail
	 WHERE StockCode IN ('POST', 'D', 'C2', 'DOT', 'M', 'BANK CHARGE');

--Deleting inconsistencies in the stockcode column(POST,D,C2,M,BANK CHARGE ETC)
DELETE FROM OnlineRetail
WHERE StockCode IN ('POST', 'D', 'C2', 'DOT', 'M', 'BANK CHARGE');

--cleaning description inconsistencies, identifying & removing empty/null, numeric codes, symbols and inconsistent formatting
DELETE FROM OnlineRetail
  WHERE Description IS NULL
OR 
  TRIM(Description) IN ('?', '??', '???', '? missing', '? lost', '? display', '? sold as set?');

--Removing rows with numerical value (20713)
  DELETE FROM OnlineRetail
  WHERE ISNUMERIC(Description)= 1;

  -- converting all remaining description to lowercase
  UPDATE OnlineRetail
  SET Description = LOWER(Description);

--Checking empty values in quantity and unitprice
--identify the affected rows
SELECT 
     *
	 FROM OnlineRetail
	 WHERE UnitPrice is NULL;

SELECT 
     *
	 FROM OnlineRetail
	 WHERE Quantity is NULL;