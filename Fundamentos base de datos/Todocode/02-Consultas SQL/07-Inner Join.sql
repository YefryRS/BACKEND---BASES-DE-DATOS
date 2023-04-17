-- Las siguientes son dos formas de unir las tablas


--Explicita: le decimos a SQL que vamos a usar el innerjoin
SELECT * from empleado INNER JOIN departamento ON empleado.id_dpto = departamento.id 

--Implicita: le ocultamos a SQL el innerjoin, pero igual lo estamos usando
SELECT * from empleado,departamento WHERE empleado.id_dpto = departamento.id