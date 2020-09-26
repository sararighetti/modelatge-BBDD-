SELECT COUNT(*) FROM usairlineflights2.flights


SELECT ORIGIN, AVG(ArrDelay) AS average_arrival, AVG(DepDelay) AS average_departure
 FROM usairlineflights2.flights 
 Group by Origin
 
 SELECT ORIGIN, COLYEAR, COLMONTH, AVG(ArrDelay) AS average_arrival
 FROM usairlineflights2.flights 
 Group by Origin, COLYEAR, COLMONTH
 ORDER BY Origin, colyear, colmonth
 
 
SELECT CITY, COLYEAR, COLMONTH, AVG(ArrDelay) AS average_arrival
 FROM usairlineflights2.flights F
 JOIN usairlineflights2.usairports A
 ON F.ORIGIN = A.IATA
 Group by City, COLYEAR, COLMONTH
 ORDER BY City, colyear, colmonth
 
 SELECT UNIQUECARRIER, COLYEAR, COLMONTH, SUM(cancelled) AS total_cancelled
 FROM usairlineflights2.flights F
 Group by UNIQUECARRIER, COLYEAR, COLMONTH
 ORDER BY SUM(cancelled) DESC
 
 SELECT TAILNUM, SUM(DISTANCE) AS TotalDistance
 FROM usairlineflights2.flights F
 WHERE tailnum != '' 
 GROUP BY TAILNUM
 ORDER BY sum(distance) DESC
 
SELECT uniquecarrier, AVG(ArrDelay) AS average_arrival
 FROM usairlineflights2.flights 
 Group by uniquecarrier
 HAVING AVG(ArrDelay) >10
 ORDER BY AVG(ArrDelay) DESC
 
