-- SESSION #01
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- SESSION #02
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- SESSION #01
UPDATE pizzeria SET rating = 3.1 WHERE id = 1;

-- SESSION #02
UPDATE pizzeria SET rating = 4.4 WHERE id = 2;

-- SESSION #01
UPDATE pizzeria SET rating = 4.5  WHERE id = 2;
-- current transaction is aborted, commands ignored until end of transaction block postgres=!# COMMIT;

-- SESSION #02
UPDATE pizzeria SET rating = 3.2 WHERE id = 1;

-- SESSION #01
COMMIT;
-- ROLLBACK

-- SESSION #02
COMMIT;