SELECT * FROM empleados WHERE sueldo >= (SELECT AVG(sueldo) FROM empleados )