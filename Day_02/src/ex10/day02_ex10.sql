SELECT DISTINCT person.name AS person_name1,
	   			person2.name AS person_name2,
	   			person.address AS common_address
FROM person
JOIN person AS person2 ON person2.address = person.address
WHERE person.address = person2.address AND person.id > person2.id
ORDER BY person_name1, person_name2, common_address

