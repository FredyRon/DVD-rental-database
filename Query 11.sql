SELECT c.country, DATE(p.payment_date) AS payment_date, SUM(p.amount) AS total_amount
FROM payment p
JOIN customer cu ON p.customer_id = cu.customer_id
JOIN address a ON cu.address_id = a.address_id
JOIN city ci ON a.city_id = ci.city_id
JOIN country c ON ci.country_id = c.country_id
GROUP BY c.country, DATE(p.payment_date)
ORDER BY c.country, DATE(p.payment_date);