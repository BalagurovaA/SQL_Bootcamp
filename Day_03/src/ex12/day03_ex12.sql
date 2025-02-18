INSERT INTO person_order (id, person_id, menu_id, order_date) (
	SELECT
	(SELECT MAX(id) FROM person_order) + new_pers_order_id AS id, 
	id AS person_id,
	(SELECT id FROM menu WHERE menu.pizza_name = 'greek pizza') AS menu_id,
	'2022-02-25' AS order_date
	FROM person 
	JOIN GENERATE_SERIES(1, (SELECT MAX(id) FROM person)) AS new_pers_order_id  ON  new_pers_order_id = person.id
	);

SELECT *
FROM person_order;