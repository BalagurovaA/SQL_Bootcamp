SELECT 
		pizza_name,
		pizzeria.name, 
		price
FROM menu
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
WHERE menu.pizza_name IN ('mushroom pizza', 'pepperoni pizza')
ORDER BY pizza_name, pizzeria.name
