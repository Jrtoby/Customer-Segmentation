--Creating columns to add RFM scores (1-5) to the CustomerRFM Table
--Assigning Recency score (LOWER = BETTER)
ALTER TABLE CustomerRFM ADD RScore INT;

UPDATE CustomerRFM
SET RScore = CASE
    WHEN Recency <= 30 THEN 5
	 WHEN Recency <= 60 THEN 4
	  WHEN Recency <= 90 THEN 3
	   WHEN Recency <= 120 THEN 2
	   ELSE 1
END;

--Assigning Frequency score (HIGHER = BETTER)
ALTER TABLE CustomerRFM ADD FScore INT;

UPDATE CustomerRFM
SET FScore = CASE
    WHEN Frequency >= 40 THEN 5
	 WHEN Frequency >= 20 THEN 4
	  WHEN Frequency >= 10 THEN 3
	   WHEN Frequency >= 5  THEN 2
	   ELSE 1
END;

--Assigning Monetary score (HIGHER = BETTER)
ALTER TABLE CustomerRFM ADD MScore INT;

UPDATE CustomerRFM
SET MScore = CASE
    WHEN Monetary >= 10000 THEN 5
	 WHEN Monetary >=  5000 THEN 4
	  WHEN Monetary >=  2500 THEN 3
	   WHEN Monetary >=  500  THEN 2
	   ELSE 1
END;