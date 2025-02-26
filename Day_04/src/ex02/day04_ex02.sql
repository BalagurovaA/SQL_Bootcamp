CREATE VIEW v_generated_dates AS
SELECT days::date AS generated_date 
FROM generate_series('2022-01-01', '2022-01-31',interval  ' 1 day') AS days;

SELECT 
	COUNT(*) = 31 AS all_days,
	MIN(generated_date),
	MAX(generated_date)
FROM v_generated_dates;
