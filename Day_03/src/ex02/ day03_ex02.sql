SELECT pizza_name,
	   price,
	   pizzeria.name
FROM menu
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
WHERE menu.id IN (SELECT id AS menu_id FROM menu WHERE id NOT IN (SELECT menu_id FROM person_order) ORDER BY id ASC)
ORDER BY menu.pizza_name, menu.price, pizzeria.name
