SET enable_seqscan = off;
EXPLAIN ANALYZE 
(SELECT pizza_name, pizzeria.name
FROM menu
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id);