CREATE DATABASE SupermercadoDB;
GO
USE SupermercadoDB;
GO
CREATE TABLE Proveedor (
  id_proveedor INT IDENTITY(1,1) PRIMARY KEY,
  nombre NVARCHAR(100),
  telefono NVARCHAR(15),
  correo NVARCHAR(100)
);

CREATE TABLE Producto (
  id_producto INT IDENTITY(1,1) PRIMARY KEY,
  nombre NVARCHAR(100),
  categoria NVARCHAR(50),
  precio DECIMAL(10,2),
  stock INT,
  id_proveedor INT,
  FOREIGN KEY (id_proveedor) REFERENCES Proveedor(id_proveedor)
);

CREATE TABLE Cliente (
  id_cliente INT IDENTITY(1,1) PRIMARY KEY,
  nombre NVARCHAR(100),
  correo NVARCHAR(100),
  telefono NVARCHAR(15)
);

CREATE TABLE Venta (
  id_venta INT IDENTITY(1,1) PRIMARY KEY,
  fecha DATE,
  id_cliente INT,
  FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE DetalleVenta (
  id_detalle INT IDENTITY(1,1) PRIMARY KEY,
  id_venta INT,
  id_producto INT,
  cantidad INT,
  subtotal DECIMAL(10,2),
  FOREIGN KEY (id_venta) REFERENCES Venta(id_venta),
  FOREIGN KEY (id_producto) REFERENCES Producto(id_producto)
);
