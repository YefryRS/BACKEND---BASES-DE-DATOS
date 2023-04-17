--Recomendado
UPDATE empleado SET nombre = "mabel" WHERE id = 3

-- No recomendado, porque al no colocarle el "WHERE" no le estamos diciendo que registro queremos modificar y por ende nos modifica a todos
UPDATE empleado SET nombre = "mabel"

-- Explicacion
UPDATE empleado(/*tabla a la que hacemos referencia*/) 
SET nombre = "mabel" (/*Atributo o columna que deseamos cambiar y el valor por el que deseamos cambiarlo*/) 
WHERE id = 3 (/*Indicamos que registro en particular deseamos modificar*/)