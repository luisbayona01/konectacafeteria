
/* Realizar una consulta que permita conocer cuál es el producto que más stock tiene. */
SELECT *
FROM productos
ORDER BY stock DESC
LIMIT 1;


/* Realizar una consulta que permita conocer cuál es el producto más vendido. */
SELECT p.nombre AS producto_mas_vendido, SUM(v.cantidad) AS total_vendido
FROM productos p
JOIN ventas v ON p.id = v.producto_id
GROUP BY p.id, p.nombre
ORDER BY total_vendido DESC
LIMIT 1;