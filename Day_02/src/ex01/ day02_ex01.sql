SELECT TO_CHAR(all_dates, 'YYYY-MM-DD') AS missing_date
FROM GENERATE_SERIES('2022-01-01', '2022-01-10', interval '1 day') AS all_dates
LEFT JOIN person_visits ON person_visits.visit_date = all_dates AND (person_visits.person_id = 1 OR person_visits.person_id = 2) 
WHERE person_visits.visit_date IS NULL
ORDER BY missing_date ASC;





