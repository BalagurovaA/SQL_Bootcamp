SELECT person.address,
	   pizzeria.name,
	   COUNT(person_order.order_date) AS count_of_orders
FROM pizzeria
JOIN menu ON menu.pizzeria_id = pizzeria.id
JOIN person_order ON person_order.menu_id = menu.id
JOIN person ON person.id = person_order.person_id
GROUP BY person.address, pizzeria.name
ORDER BY person.address, pizzeria.name