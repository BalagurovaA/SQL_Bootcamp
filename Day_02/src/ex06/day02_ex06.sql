WITH D_A_order AS (
	SELECT person_order.menu_id
	FROM person
	JOIN person_order ON person_order.person_id = person.id
	WHERE person.name IN('Denis', 'Anna')
)

SELECT menu.pizza_name,
	   pizzeria.name AS pizzeria_name
FROM menu
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
JOIN D_A_order ON D_A_order.menu_id = menu.id
ORDER BY menu.pizza_name, pizzeria.name;

