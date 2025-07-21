--Calculate and creating a new table for RFM(RECENCY, FREQUENCY & MONETARY), including Revenue 
SELECT
     CustomerID,
	 DATEDIFF(DAY, MAX(InvoiceDate), '2011-12-09') AS Recency,
	 COUNT(DISTINCT InvoiceNo) AS Frequency,
	 SUM(UnitPrice*Quantity) AS Monetary
INTO CustomerRFM
FROM CustomerTransactions
GROUP BY CustomerID;

--Retrieving data from the customerRFM
SELECT
      *
	  FROM CustomerRFM
ORDER BY Monetary DESC;