use football;
select*from foot_ball;

#Task 1 Identify the average market value of players with respect to playing position?

SELECT AVG(market_value_in_eur) AS average_market_value
FROM foot_ball
WHERE position_y = 'attack';

#Task 2 Find the count of players, year-wise in which players contract are about to expire? 
  
SELECT YEAR(contract_expiration_date) AS expiry_year, COUNT(*) AS player_count
FROM foot_ball
GROUP BY expiry_year
ORDER BY player_count;

#Task 3 Which referee had issued more number of red cards?

SELECT referee, SUM(red_cards) AS total_red_cards
FROM foot_ball
GROUP BY referee
ORDER BY total_red_cards DESC
LIMIT 1;

#Task 4 Find out the type of football competition,which has engaged more minutes?

SELECT competition_type, SUM(minutes_played) AS total_minutes_played
FROM foot_ball
GROUP BY competition_type
ORDER BY total_minutes_played DESC
LIMIT 5;


