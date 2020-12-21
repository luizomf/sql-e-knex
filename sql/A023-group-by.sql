-- Group by - Agrupa valores
SELECT first_name, COUNT(id) as total FROM users
GROUP BY first_name
ORDER BY total DESC;

select u.first_name, COUNT(u.id) as total from users u
left join profiles as p
on p.user_id = u.id
WHERE u.id IN (617, 539, 537, 611)
GROUP BY first_name
ORDER BY total DESC
LIMIT 5;
