-- SESSION #01
 BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
 
-- SESSION #02
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- SESSION #01
SELECT SUM(rating) FROM pizzeria;

-- SESSION #02
INSERT INTO pizzeria (id, name, rating) VALUES (10, 'Kazan Pizza', 5);
COMMIT;

-- SESSION #01
SELECT SUM(rating) FROM pizzeria;
COMMIT;
SELECT SUM(rating) FROM pizzeria;

-- SESSION #02
SELECT SUM(rating) FROM pizzeria;