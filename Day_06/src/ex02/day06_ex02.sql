SELECT person.name,
	   menu.pizza_name,
	   menu.price,
	   CAST (menu.price - (menu.price * p_d.discount/100)AS INTEGER) AS discount_price,
	   pizzeria.name AS pizzeria_name
FROM person_order
JOIN person on person.id = person_order.person_id
JOIN menu ON menu.id = person_order.menu_id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
JOIN person_discounts p_d ON p_d.person_id = person.id AND pizzeria.id = p_d.pizzeria_id
ORDER BY person.name, menu.pizza_name;