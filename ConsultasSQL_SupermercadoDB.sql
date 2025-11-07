USE SupermercadoDB;
GO

-- Consultas de prueba

-- Consulta 1: Ventas con cliente y total
SELECT v.id_venta, c.nombre AS cliente, v.fecha, SUM(dv.subtotal) AS total
FROM Venta v
JOIN Cliente c ON v.id_cliente = c.id_cliente
JOIN DetalleVenta dv ON v.id_venta = dv.id_venta
GROUP BY v.id_venta, c.nombre, v.fecha
ORDER BY v.fecha;

-- Consulta 2: Productos con su proveedor
SELECT p.nombre AS producto, p.categoria, pr.nombre AS proveedor, p.stock
FROM Producto p
JOIN Proveedor pr ON p.id_proveedor = pr.id_proveedor
ORDER BY p.nombre;

-- Consulta 3: Top 3 productos más vendidos
SELECT TOP 3 p.nombre, SUM(dv.cantidad) AS total_vendido
FROM DetalleVenta dv
JOIN Producto p ON dv.id_producto = p.id_producto
GROUP BY p.nombre
ORDER BY total_vendido DESC;
GO
