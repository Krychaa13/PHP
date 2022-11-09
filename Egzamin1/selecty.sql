-- wyświetlić wszystkie stoliki i rezerwacje jeśli istnieją
SELECT * FROM Restaurant_table AS rt
JOIN Restaurant AS r ON r.id = rt.restaurant.id
LEFT JOIN Reservation AS rsv ON rsv.restaurant_table_id = rt.id

-- wyświetlić wszystkie stoliki, które nie mają rezerwacji
SELECT * FROM Restaurant_Table AS rt
JOIN Restaurant AS r On r.id = rt.restaurant_id
LEFT JOIN Reservation AS rsv ON rsv.restaurant_table_id = rt.id
WHERE rsv.restaurant_table_id is NULL

-- wyświetlić stoliki, które mają rezerwację w danej restauracji
SELECT * FROM Restaurant_table AS rt
JOIN Restaurant AS r On r.id = rt.restaurant_id
LEFT JOIN Reservation AS rsv ON rsv.restaurant_table_id = rt.id
GROUP BY r.id

--wyświetlić wszystkich pracowników oraz ich dane dot. stanowiska i zatrudnienia w restauracjach
SELECT * FROM Employee AS e
JOIN Employment AS emp ON emp.employee_id = e.id
JOIN Employee_Position AS ep ON ep.id = emp.employee_position_id
JOIN Restaurant AS r ON r.id = emp.restaurant_id

--wyświetlić pracowników nigdzie nie zatrudnionych 
SELECT * FROM Employee AS e
RIGHT JOIN Employment AS emp ON emp.employee_id = e.id
WHERE emp.employee_id IS NULL

--wyświetlić pracowników, którzy pracują w conajmniej 2 restauracjach
SELECT * FROM Employee AS e
JOIN Employment AS emp ON emp.employee_id = e.id
JOIN Restaurant AS r ON r.id = emp.restaurant_id
GROUP BY e.id
HAVING COUNT(r.id) >= 2

--cross join restauracji i pracowników
SELECT * FROM Restaurant AS r
CROSS JOIN Employee AS e