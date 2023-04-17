
SELECT COUNT(cod_producto) FROM productos -- cantidad de registros de mi tabla
SELECT MAX(precio) FROM productos--precio maximo
SELECT MIN(precio) FROM productos--minimo precio
SELECT AVG(precio) FROM productos--promedio
SELECT SUM(stock) FROM productos--suma total

-- A todas las funciones anteriores se les puede agregar el where
SELECT SUM(stock) FROM productos WHERE marca = "Xiaomi"