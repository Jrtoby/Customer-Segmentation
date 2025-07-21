UPDATE CustomerRFM
SET Segment = CASE
    WHEN RScore >= 4 AND FScore >= 4 AND MScore = 5 THEN 'Champion'
	 WHEN RScore >= 3 AND FScore >= 4 AND MScore >= 3 THEN 'Loyal Customer'
	  WHEN MScore = 5 AND FScore <= 2 THEN 'Big Spender'
	   WHEN RScore >= 4 AND FScore <= 2 AND MScore >= 3 THEN 'Potential Loyalist'
	    WHEN RScore = 4 AND FScore = 1 AND MScore >= 2 THEN 'Recent Customer'
		 WHEN RScore <= 2 AND FScore >= 3 AND MScore >= 2 THEN 'At Risk'
		  WHEN RScore = 1 AND FScore <= 2 AND MScore <= 2 THEN 'Lost'
		   ELSE 'Others'
END;