SELECT  DISTINCT menu.pizza_name AS pizza_name,
	   LEAST(pizzeria1.name, pizzeria2.name) AS pizzeria_name_1,
	   GREATEST(pizzeria1.name, pizzeria2.name) AS pizzeria_name_2,
	   menu.price
FROM menu
JOIN pizzeria AS pizzeria1 ON pizzeria1.id = menu.pizzeria_id
JOIN menu AS select_menu ON select_menu.pizza_name = menu.pizza_name AND select_menu.price = menu.price
JOIN pizzeria AS pizzeria2 ON pizzeria2.id = select_menu.pizzeria_id
WHERE pizzeria1.id != pizzeria2.id
ORDER BY pizza_name;

