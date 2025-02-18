(SELECT pizzeria.name AS pizzeria_name
FROM pizzeria
JOIN person_visits ON person_visits.pizzeria_id = pizzeria.id
JOIN person_order ON person_order.person_id = person_visits.person_id
JOIN person ON person.id = person_order.person_id
WHERE person.gender = 'female'

EXCEPT ALL

SELECT pizzeria.name AS pizzeria_name
FROM pizzeria
JOIN person_visits ON person_visits.pizzeria_id = pizzeria.id
JOIN person_order ON person_order.person_id = person_visits.person_id
JOIN person ON person.id = person_order.person_id
WHERE person.gender = 'male')

UNION 

(SELECT pizzeria.name AS pizzeria_name
FROM pizzeria
JOIN person_visits ON person_visits.pizzeria_id = pizzeria.id
JOIN person_order ON person_order.person_id = person_visits.person_id
JOIN person ON person.id = person_order.person_id
WHERE person.gender = 'male'

EXCEPT

SELECT pizzeria.name AS pizzeria_name
FROM pizzeria
JOIN person_visits ON person_visits.pizzeria_id = pizzeria.id
JOIN person_order ON person_order.person_id = person_visits.person_id
JOIN person ON person.id = person_order.person_id
WHERE person.gender = 'female');




