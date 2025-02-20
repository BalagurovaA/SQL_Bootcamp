CREATE INDEX idx_person_name ON person(name);

EXPLAIN ANALYZE
SELECT name
FROM person
ORDER BY name ASC;