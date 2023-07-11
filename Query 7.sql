--look for the names of the people who have not delivered a film

WITH notreturned AS (
	SELECT customer_id
    FROM rental
    WHERE return_date IS NULL
)
SELECT c.first_name, c.last_name, c.customer_id, p.customer_id
FROM customer c
JOIN notreturned p ON c.customer_id = p.customer_id