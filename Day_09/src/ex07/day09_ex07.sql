CREATE OR REPLACE FUNCTION func_minimum(VARIADIC arr FLOAT[])
RETURNS FLOAT 
AS $$
BEGIN
RETURN (SELECT MIN(value) FROM unnest(arr) AS value);
END;
$$
LANGUAGE plpgsql;

SELECT func_minimum(VARIADIC arr => ARRAY[10.0, -1.0, 5.0, 4.4]);