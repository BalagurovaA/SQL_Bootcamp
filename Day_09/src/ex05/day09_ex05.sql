CREATE OR REPLACE FUNCTION fnc_persons(pgender VARCHAR DEFAULT 'female')
RETURNS SETOF person AS $$
SELECT (id, name, age, gender, address) FROM person WHERE gender = pgender;
$$
LANGUAGE SQL;

SELECT *
from fnc_persons(pgender := 'male');

SELECT *
from fnc_persons();