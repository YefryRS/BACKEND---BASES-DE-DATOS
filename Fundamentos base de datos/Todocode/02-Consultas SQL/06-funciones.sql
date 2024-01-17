
SELECT COUNT(cod_producto) FROM productos -- cantidad de registros de mi tabla
SELECT MAX(precio) FROM productos--precio maximo
SELECT MIN(precio) FROM productos--minimo precio
SELECT AVG(precio) FROM productos--promedio
SELECT SUM(stock) FROM productos--suma total

-- A todas las funciones anteriores se les puede agregar el where
SELECT SUM(stock) FROM productos WHERE marca = "Xiaomi"

-- Limitar lo que deseo traer
SELECT nombre,precio FROM productos ORDER BY precio ASC LIMIT 1

-- El minino puede llevar mas cosas
SELECT nombre, MIN(precio) FROM productos