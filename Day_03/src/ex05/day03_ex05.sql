SELECT DISTINCT pizzeria.name AS pizzeria_name
FROM pizzeria
JOIN person_visits ON person_visits.pizzeria_id = pizzeria.id
JOIN person ON person.id = person_visits.person_id
JOIN person_order ON person_order.person_id = person.id
WHERE person.name = 'Andrey' AND person_visits.visit_date != person_order.order_date