


                           Consultas Básicas

Seleccionar Datos de una Tabla

sql
SELECT * FROM NombreDeLaTabla;
Selecciona todos los datos de una tabla específica.
----------------------------------------------------------------
Seleccionar Datos Específicos

sql
SELECT columna1, columna2 FROM NombreDeLaTabla;
Selecciona datos de columnas específicas.
--------------------------------------------------------------------
Filtrar Datos

sql
SELECT * FROM NombreDeLaTabla WHERE columna = 'valor';
Filtra los datos de una tabla basándose en una condición.
--------------------------------------------------------------------
Ordenar Datos

sql
SELECT * FROM NombreDeLaTabla ORDER BY columna ASC;
Ordena los datos en orden ascendente o descendente (DESC).
--------------------------------------------------------------------
Consultas de Agregación
Contar Filas

sql
SELECT COUNT(*) FROM NombreDeLaTabla;
Cuenta el número total de filas en una tabla.
-------------------------------------------------------------------
Sumar Valores

sql
SELECT SUM(columna) FROM NombreDeLaTabla;
Suma los valores de una columna específica.
--------------------------------------------------------------------
Promediar Valores

sql
SELECT AVG(columna) FROM NombreDeLaTabla;
Calcula el promedio de los valores en una columna.
--------------------------------------------------------------------
Encontrar Máximo y Mínimo

sql
SELECT MAX(columna) FROM NombreDeLaTabla;
SELECT MIN(columna) FROM NombreDeLaTabla;
Encuentra el valor máximo y mínimo de una columna.
--------------------------------------------------------------------
Consultas de Unión y Joins
Unir Tablas con INNER JOIN

sql
SELECT t1.columna, t2.columna FROM Tabla1 t1
INNER JOIN Tabla2 t2 ON t1.id = t2.id;
Une dos tablas basándose en una condición.
--------------------------------------------------------------------
Unir Tablas con LEFT JOIN

sql
SELECT t1.columna, t2.columna FROM Tabla1 t1
LEFT JOIN Tabla2 t2 ON t1.id = t2.id;
Devuelve todos los registros de la tabla izquierda y los registros coincidentes de la tabla derecha.
--------------------------------------------------------------------
Consultas de Modificación de Datos
Insertar Datos

sql
INSERT INTO NombreDeLaTabla (columna1, columna2) VALUES ('valor1', 'valor2');
Inserta nuevos datos en una tabla.
--------------------------------------------------------------------
Actualizar Datos

sql
UPDATE NombreDeLaTabla SET columna1 = 'nuevoValor' WHERE columna2 = 'valor';
Actualiza los datos existentes en una tabla.
--------------------------------------------------------------------
Eliminar Datos

sql
DELETE FROM NombreDeLaTabla WHERE columna = 'valor';
Elimina los datos de una tabla basándose en una condición.
--------------------------------------------------------------------
Consultas Avanzadas
Subconsultas

sql
SELECT columna FROM NombreDeLaTabla WHERE columna = (SELECT MAX(columna) FROM OtraTabla);
Usa una subconsulta para obtener datos basados en otra consulta.
--------------------------------------------------------------------
Crear Vistas

sql
CREATE VIEW NombreDeLaVista AS
SELECT columna1, columna2 FROM NombreDeLaTabla WHERE columna3 = 'valor';
Crea una vista para simplificar consultas complejas.
--------------------------------------------------------------------
Transacciones

sql
BEGIN TRANSACTION;
-- Ejecuta varias consultas
COMMIT;
-- o ROLLBACK para deshacer cambios