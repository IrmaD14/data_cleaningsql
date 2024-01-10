SELECT * FROM football..football

/*
	Cleaning Data in SQL
*/

-- Delete Column

ALTER TABLE football..football
DROP COLUMN column16, column17, column18;

SELECT * FROM football..football

--Standardize Format

SELECT *
FROM football..football
WHERE Shots & OnTarget & Year is NULL

SELECT * FROM football..football
ORDER BY Matches_Played DESC

UPDATE football..football
SET League = 'Campeonato Brasileiro'
WHERE League = 'Campeonato Brasileiro Série A'

SELECT DISTINCT League
FROM football..football

DELETE FROM football..football
WHERE League = 'France Ligue 19' OR League = 'France Ligue 18'

DELETE FROM football..football
WHERE League = 'France Ligue 3' OR League = 'France Ligue 4' OR League = 'France Ligue 5' OR League = 'France Ligue 6' OR League = 'France Ligue 7'
OR League = 'France Ligue 8' OR League = 'France Ligue 9' OR League = 'France Ligue 10' OR League = 'France Ligue 11' OR League = 'France Ligue 12'
OR League = 'France Ligue 13' OR League = 'France Ligue 14' OR League = 'France Ligue 15' OR League = 'France Ligue 16'

DELETE FROM football..football
WHERE League = 'France Ligue 17'

UPDATE football..football
SET xG = ROUND(xG, 2)

UPDATE football..football
SET xG_Per_Avg_Match = ROUND(xG_Per_Avg_Match, 3)

UPDATE football..football
SET Shots_Per_Avg_Match = ROUND(Shots_Per_Avg_Match, 2),
On_Target_Per_Avg_Match = ROUND(On_Target_Per_Avg_Match, 2)

-- Cek pemain club Chelsea FC

SELECT MAX(Mins) as Max_Minutes, Country, League, Club, Player_Names
FROM football..football
WHERE Club = 'CHE'
GROUP BY Country, League, Club, Player_Names
ORDER BY Max_Minutes DESC

SELECT * FROM football..football







