UPDATE menu SET price = ROUND(menu.price * 0.9)
WHERE menu.pizza_name = 'greek pizza' AND menu.id = 19;
SELECT * 
FROM menu;

