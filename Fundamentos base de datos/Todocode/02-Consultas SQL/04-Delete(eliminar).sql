--Recomendado
DELETE FROM empleado WHERE num_legado = 3

-- No recomendado, porque al no colocarle el "WHERE" no le estamos diciendo que registro queremos borrar y por ende nos borra toda la tabla
DELETE FROM empleado

-- Eliminar la tabla completa: Peligrosisima, borra toda la tabla con todos los registros
DROP TABLE animals;