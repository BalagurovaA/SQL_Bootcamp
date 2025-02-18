SELECT COALESCE(person.name, '-') AS person_name,
	   person_visits.visit_date,
	   COALESCE(pizzeria.name, '-') AS pizzeria_name
FROM (SELECT * FROM person_visits WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03') AS person_visits
FULL OUTER JOIN
	person ON person.id = person_visits.person_id
FULL OUTER JOIN
	GENERATE_SERIES('2022-01-01'::date, '2022-01-03'::date, interval '1 day') AS all_dates ON all_dates = person_visits.visit_date
FULL OUTER JOIN
	pizzeria ON pizzeria.id = person_visits.pizzeria_id
ORDER BY person_name, visit_date, pizzeria_name;

