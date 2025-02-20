SELECT *
FROM person_discounts;

COMMENT ON COLUMN person_discounts.id IS 'это id для создания порядковой нумерации';
COMMENT ON COLUMN person_discounts.person_id IS 'это id человека из таблицы person';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'это id пицерии из таблицы pizzeria';
COMMENT ON COLUMN person_discounts.discount IS 'скидка вычисляется в процентах';
