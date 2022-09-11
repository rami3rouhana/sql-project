(SELECT name, earnings_rank, name, earnings_rank FROM movie 
ORDER BY earnings_rank DESC LIMIT 1 )
UNION ALL
(SELECT name, earnings_rank, name, earnings_rank FROM movie 
ORDER BY earnings_rank ASC LIMIT 1 )

