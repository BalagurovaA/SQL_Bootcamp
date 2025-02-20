CREATE OR REPLACE FUNCTION fnc_fibonacci(pstop BIGINT DEFAULT 10)
RETURNS TABLE (name VARCHAR) 
AS $$
BEGIN
RETURN QUERY
WITH RECURSIVE fib_recurs(val1, val2) AS (
VALUES(0, 1)
UNION ALL
SELECT val2, val1 + val2 FROM fib_recurs
WHERE val2 < pstop
)

SELECT val1::VARCHAR FROM fib_recurs;
END;
$$
LANGUAGE plpgsql;
SELECT * FROM fnc_fibonacci();