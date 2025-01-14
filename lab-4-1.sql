-- How many lifetime hits does Barry Bonds have?

-- AW: find Barry Bonds ID (1678)
SELECT *
FROM players
WHERE first_name = "Barry"
AND last_name = "Bonds";

-- AW: find hits
SELECT players.id, players.first_name, players.last_name, sum(stats.hits)
FROM players
INNER JOIN stats ON players.id = stats.player_id
WHERE players.id = 1678;

-- Professor method (faster)
SELECT sum(stats.hits), players.last_name
FROM players
INNER JOIN stats ON players.id = stats.player_id
WHERE players.first_name = "Barry"
AND players.last_name = "Bonds";

-- Expected result:
-- 2935


