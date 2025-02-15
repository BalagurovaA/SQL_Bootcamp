SELECT DISTINCT order_date AS action_date, 
		person.name AS person_name
FROM person_order
INNER JOIN person ON person.id = person_order.person_id
ORDER BY action_date ASC, person_name DESC;