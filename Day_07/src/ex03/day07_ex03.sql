WITH order_count AS (
	(SELECT name,
	   		(COUNT(person_order.order_date)) AS count
	   FROM pizzeria
	   JOIN menu ON menu.pizzeria_id = pizzeria.id
	   JOIN person_order ON person_order.menu_id = menu.id
	   GROUP BY pizzeria.name
	   )
),
visit_count AS (
	(SELECT name,
	   		(COUNT(person_visits.visit_date)) AS count
	   FROM pizzeria
	   JOIN person_visits ON person_visits.pizzeria_id = pizzeria.id
	   GROUP BY pizzeria.name
 	   )
) 

SELECT COALESCE(order_count.name, visit_count.name) AS name,
       COALESCE(order_count.count, 0) + COALESCE(visit_count.count, 0) AS total_count
FROM order_count
FULL OUTER JOIN visit_count ON order_count.name = visit_count.name 
ORDER BY total_count DESC, name ASC;