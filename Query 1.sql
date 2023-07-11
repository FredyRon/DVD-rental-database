----******records of all customers who have not yet filled their district in the system

SELECT first_name, last_name
FROM customer
WHERE address_id <> ALL (
SELECT address_id FROM address WHERE district <>'')