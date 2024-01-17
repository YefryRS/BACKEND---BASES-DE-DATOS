--DIAGRAMA ENTIDAD RELACION--
piensa en lo siguiente:
Alumno - Materias -> N - N
    1 - N
    N - 1
UN alumno tiene MUCHAS materias
UNA materia tiene MUCHOS alumnos.
Agarramos el numero mas grande y esa es la relacion, en este caso tanto de parte de Alumno como de Materia, el N es el numero mas grande. Por tanto la relacion es N - N

--TIPOS DE DATOS-- 
Texto: 
-CHAR
-VARCHAR: 255 CARACTERES
-TEXT: CADENAS DE MAS DE 255 CARACTERES

Números:
-INTEGER: sin punto decimal
-BIGINT: Numero muy grande
-SMALLINT: 99 o menos, osea numero muy pequeño
-DECIMAL(n,s): n es el numero, y s la cantidad de numeros decimales
-NUMERIC(n,s)

Fecha/Hora:
-DATE: Fecha, osea AAAA/MM/DD
-TIME: Hora del dia
-DATETIME: Tanto la fecha como la hora
-TIMESTAMP: Tanto la fecha como la hora

Lógicos: 
-BOOLEAN: true o false - 1 o 0.

--CONSTRAINS - RESTRICCIONES--
-NOT NULL: Se asegura que la columna no tenga nulos
-UNIQUE: Se asegura que la columna no se repita
-PRIMARY KEY: Combinacion de NOT NULL y UNIQUE
-FOREIGN KEY: Identifica de manera unica el primary key de otra tabla
-CHECK: Se asegura que el valor en la columna cumpla una condicion
-DEFAULT: Coloca un valor por defecto cuando no se especifica un valor
-INDEX: se crea por columna para permitir busquedas mas rápidas


-- QUERY O CONSULTAS --
consultas basicas
--select
-SELECT * FROM people; selecciona todos los campos
-SELECT titulo AS encabezado,estatus AS estado; trae solo esos campos y con el nuevo nombre
-SELECT COUNT(*)AS numeros_post FROM post; contar todos los registros

--from y join: es parecido a los diagramas de venn
--inner join--
-SELECT * FROM usuarios LEFT JOIN post ON usuarios.id = posts.usuario_id;
-SELECT * FROM usuarios LEFT JOIN post ON usuarios.id = posts.usuario_id WHERE post.usuario_id IS NULL;
--right join--
-SELECT * FROM usuarios RIGHT JOIN post ON usuarios.id = posts.usuario_id;
-SELECT * FROM usuarios RIGHT JOIN post ON usuarios.id = posts.usuario_id WHERE post.usuario_id IS NULL;
--inner join: que tengan una interseccion-- 
-SELECT * FROM usuarios INNER JOIN post ON usuarios.id = posts.usuario_id;

--where
-SELECT * FROM post WHERE id > 50;
-SELECT * FROM post WHERE titulo LIKE '%escandalo%'; Like sirve para traer datos que no sepa de manera exacta
-SELECT * FROM post WHERE fecha_publicacion BETWEEN '2023-01-01' AND '2023-06-01'; between nos trae datos que esten entre los rangos que proporcionemos
-SELECT * FROM post WHERE MONTH(fecha_publicacion) = '01'; nos proporciona solo el mes
-SELECT * FROM post WHERE YEAR(fecha_publicacion) BETWEEN '2023' AND '2024';
-SELECT * FROM post WHERE usuario_id IS null; trae los nulos
-SELECT * FROM post WHERE usuario_id IS NOT null; trae todos menos los nulos

consultas avanzadas
--group by: Agrupar datos
-SELECT estatus, COUNT(*) AS post_cantidad FROM posts GROUP BY estatus; agrupar los datos

--order by y having
-SELECT * FROM posts ORDER BY fecha_publicacion ASC; ordenar los datos
-SELECT * FROM posts ORDER BY fecha_publicacion ASC LIMIT 5; ordenar los datos y limitar los datos