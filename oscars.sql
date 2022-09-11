SELECT name, earnings_rank FROM movies 
INNER JOIN oscars
where oscars.type="best-picture"
ORDER BY earnings_rank ASC LIMIT 1 ;