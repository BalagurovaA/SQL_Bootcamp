(SELECT name,
	   (COUNT(person_order.order_date)) AS count,
	   'order' AS action_type
	   FROM pizzeria
	   JOIN menu ON menu.pizzeria_id = pizzeria.id
	   JOIN person_order ON person_order.menu_id = menu.id
	   GROUP BY pizzeria.name
 	   ORDER BY count DESC
	   LIMIT 3)
	   
UNION ALL

(SELECT name,
	   (COUNT(person_visits.visit_date)) AS count,
	   'visit' AS action_type
	   FROM pizzeria
	   JOIN person_visits ON person_visits.pizzeria_id = pizzeria.id
	   GROUP BY pizzeria.name
 	   ORDER BY count DESC, action_type DESC
 	   LIMIT 3);