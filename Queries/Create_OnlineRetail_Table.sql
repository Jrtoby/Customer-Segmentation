--Creating a new clean table from OnlineRetail to support customer segmentation
SELECT *
INTO CustomerTransactions
FROM OnlineRetail
WHERE CustomerID IS NOT NULL
AND Quantity >0
AND UnitPrice >0
AND Description IS NOT NULL
AND TRIM(Description)NOT IN ('?','??','???')
AND ISNUMERIC(Description) = 0;

--Retrieving data from the new OnlineRetail table
SELECT
     *
      FROM OnlineRetail;