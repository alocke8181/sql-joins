SELECT * FROM owners JOIN vehicles ON vehicles.owner_id = owners.id;

SELECT first_name, last_name, COUNT(first_name) AS count FROM owners 
JOIN vehicles ON vehicles.owner_id = owners.id 
GROUP BY first_name, last_name ORDER BY first_name ASC;

SELECT first_name, last_name, 
ROUND(CAST(AVG(price) AS numeric),0) AS average_price, 
COUNT(first_name) AS count 
FROM owners JOIN vehicles ON vehicles.owner_id = owners.id 
GROUP BY first_name, last_name HAVING AVG(price) > 10000 
ORDER BY first_name DESC;