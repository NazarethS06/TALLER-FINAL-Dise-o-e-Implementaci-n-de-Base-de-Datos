USE SupermercadoDB;
GO

--Insertar datos

INSERT INTO Proveedor (nombre, telefono, correo)
VALUES ('Distribuidora El Sol', '8888-1010', 'sol@proveedores.cr'),
       ('AgroSuper', '8888-2020', 'agrosuper@proveedores.cr');

INSERT INTO Producto (nombre, categoria, precio, stock, id_proveedor)
VALUES ('Arroz 1kg', 'Granos', 1200, 200, 1),
       ('Leche Entera', 'Lácteos', 900, 150, 2),
       ('Aceite Vegetal', 'Cocina', 2500, 100, 1);

INSERT INTO Cliente (nombre, correo, telefono)
VALUES ('Juan Pérez', 'juanperez@correo.com', '8888-1111'),
       ('Laura Rojas', 'laurarojas@correo.com', '8888-2222');

INSERT INTO Venta (fecha, id_cliente)
VALUES ('2025-02-01', 1),
       ('2025-02-02', 2);

INSERT INTO DetalleVenta (id_venta, id_producto, cantidad, subtotal)
VALUES (1, 1, 2, 2400),
       (1, 2, 1, 900),
       (2, 3, 1, 2500);

