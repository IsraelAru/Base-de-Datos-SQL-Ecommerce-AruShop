use arushop;

-- INSERTAR DATOS

INSERT INTO clientes(nombre, apellido, dni, correo_electronico, telefono)
	VALUES
    ("Nahuel", "Montes", "13421471", "nahuel@gmail.com", "1145124212"),
    ("Giselle", "Esposito", "12421471", "giselle@gmail.com", "1166124212"),
    ("Fernando", "Vasquez", "23421471", "fer@gmail.com", "1136124212"),
    ("Valeria", "Alvarez", "33421471", "vale@gmail.com", "1145123222"),
    ("Renata", "Gilera", "43421471", "renata@gmail.com", "1155624212"),
    ("Matias", "Guatemala", "13424481", "mati@gmail.com", "1144424212");
SELECT * FROM clientes; 
INSERT INTO articulos(nombre_articulo, precio, cantidad_stock, descripcion)
	VALUES
    ("pantalon de jean", 16000, 12, "pantalon denim"),
    ("buzo", 12000, 16, "buzo frizado 100% algodon"),
    ("remera", 8000, 6, "remera de jersey 100% algodon"),
    ("joggin", 15000, 12, "joggin frizado 100% algodon");
SELECT * FROM articulos; 
INSERT INTO ventas(id_clientes, total)
	VALUES
    (1,60000),
    (2,75000),
    (3,15000);
INSERT INTO detalle_ventas(id_ventas, id_articulos, cantidad, precio)
	VALUES
    (1, 4, 4, 15000),
    (2, 4, 5, 15000);
    
SELECT * FROM detalle_ventas;