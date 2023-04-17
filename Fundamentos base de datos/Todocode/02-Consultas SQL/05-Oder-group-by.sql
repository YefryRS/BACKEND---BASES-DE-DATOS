-- Order (ordenamiento)
SELECT * FROM empleado ORDER BY apellido ASC -- ascendente

SELECT * FROM empleado ORDER BY sueldo_neto DESC --descendente

-- Group By (agrupamiento)

SELECT cargo FROM empleado GROUP BY cargo; -- no me repite los datos, me agrupa por cargo y me trae uno solo