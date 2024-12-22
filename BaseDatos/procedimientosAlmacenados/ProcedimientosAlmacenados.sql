

1. Procedimiento Almacenado para Insertar Datos
Este procedimiento permite insertar nuevos registros en una tabla.

sql
CREATE PROCEDURE InsertarUsuario
    @nombre VARCHAR(50),
    @apellido VARCHAR(50),
    @email VARCHAR(100),
    @edad INT
AS
BEGIN
    INSERT INTO Usuarios (nombre, apellido, email, edad)
    VALUES (@nombre, @apellido, @email, @edad);
END;

---------------------------------------------------------------
2. Procedimiento Almacenado para Actualizar Datos
Este procedimiento actualiza los registros existentes en una tabla basándose en el ID del usuario.

sql
CREATE PROCEDURE ActualizarUsuario
    @id INT,
    @nombre VARCHAR(50),
    @apellido VARCHAR(50),
    @email VARCHAR(100),
    @edad INT
AS
BEGIN
    UPDATE Usuarios
    SET nombre = @nombre, apellido = @apellido, email = @email, edad = @edad
    WHERE id = @id;
END;
------------------------------------------------------------------
3. Procedimiento Almacenado para Eliminar Datos
Este procedimiento elimina un registro de una tabla basándose en el ID del usuario.

sql
CREATE PROCEDURE EliminarUsuario
    @id INT
AS
BEGIN
    DELETE FROM Usuarios
    WHERE id = @id;
END;
-------------------------------------------------------------------
4. Procedimiento Almacenado para Seleccionar Datos
Este procedimiento selecciona todos los registros de una tabla.

sql
CREATE PROCEDURE SeleccionarUsuarios
AS
BEGIN
    SELECT * FROM Usuarios;
END;
------------------------------------------------------------------
5. Procedimiento Almacenado para Seleccionar Datos con Filtro
Este procedimiento selecciona registros de una tabla basándose en una condición.

sql
CREATE PROCEDURE SeleccionarUsuarioPorEmail
    @email VARCHAR(100)
AS
BEGIN
    SELECT * FROM Usuarios
    WHERE email = @email;
END;
-------------------------------------------------------------------
6. Procedimiento Almacenado para Transacciones
Este procedimiento encapsula varias operaciones en una transacción.

sql
CREATE PROCEDURE ActualizarEmailYEdad
    @id INT,
    @nuevoEmail VARCHAR(100),
    @nuevaEdad INT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        UPDATE Usuarios
        SET email = @nuevoEmail, edad = @nuevaEdad
        WHERE id = @id;

        COMMIT;
    END TRY
    BEGIN CATCH
        ROLLBACK;
        THROW;
    END CATCH;
END;

--------------------------------------------------------------------
7. Procedimiento Almacenado con Parámetros de Salida
Este procedimiento devuelve el nombre completo de un usuario basándose en el ID proporcionado.

sql
CREATE PROCEDURE ObtenerNombreCompleto
    @id INT,
    @nombreCompleto VARCHAR(101) OUTPUT
AS
BEGIN
    SELECT @nombreCompleto = CONCAT(nombre, ' ', apellido)
    FROM Usuarios
    WHERE id = @id;
END;
--------------------------------------------------------------------
8. Procedimiento Almacenado con Paginación
Este procedimiento recupera registros de forma paginada para optimizar la recuperación de grandes conjuntos de datos.

sql
CREATE PROCEDURE SeleccionarUsuariosPaginados
    @pagina INT,
    @tamanoPagina INT
AS
BEGIN
    DECLARE @inicio INT = (@pagina - 1) * @tamanoPagina;

    SELECT *
    FROM Usuarios
    ORDER BY id
    OFFSET @inicio ROWS
    FETCH NEXT @tamanoPagina ROWS ONLY;
END;
Estos procedimientos almacenados cubren una amplia gama de operaciones comunes y avanzadas en SQL Server.