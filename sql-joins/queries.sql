SELECT * FROM owners o
FULL OUTER JOIN vehicles v
ON o.id = v.owner_id;
-- join both tables --

SELECT first_name, last_name, count(owner_id) FROM owners o
JOIN vehicles v
ON o.id = v.owner_id
GROUP BY (first_name, last_name)
ORDER BY (first_name);
-- number of cars owned by each owner --

SELECT first_name, last_name, ROUND(AVG(price)) AS average_price, COUNT(owner_id) FROM owners o
JOIN vehicles v
ON o.id = v.owner_id
GROUP BY (first_name, last_name)
HAVING COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 10000
ORDER BY first_name DESC;
-- owners with cars with prices greater than $10000 --