

/* Insercion de datos de ciudad */
	INSERT INTO ciudad(ciudad_code, ciudad_nombre ) 
    VALUES (1, 'Manta');
	INSERT INTO ciudad(ciudad_code, ciudad_nombre ) 
    VALUES (2, 'Portoviejo');


	/* Insercion de datos de biblioteca */
	INSERT INTO biblioteca ( biblioteca_code, ciudad_code, blibloteca_name, bdireccion ) 
    VALUES (1,2, 'Biblioteky', 'calle 13, av 24');


	/* Insercion de datos de genero */
	INSERT INTO genero(genero_code, genero_nombre) 
    VALUES (1, 'aventura');
	INSERT INTO genero(genero_code, genero_nombre) 
    VALUES (2, 'ciencia ficcion');
	INSERT INTO genero(genero_code, genero_nombre) 
    VALUES (3, 'fantasia');
	INSERT INTO genero(genero_code, genero_nombre) 
    VALUES (4, 'paranormal');	
	INSERT INTO genero(genero_code, genero_nombre) 
    VALUES (5, 'educativo');

	/* Insercion de datos de los autores */
	INSERT INTO autor(autorcode,autor_nombres,autor_apellidos,ciudad,pais) 
    VALUES (1, 'Julio', 'Verne','Nantes','Francia');
	INSERT INTO autor(autorcode,autor_nombres,autor_apellidos,ciudad,pais) 
    VALUES (2, 'Joanne', 'Rowling','Yate','Reino Unido');
	INSERT INTO autor(autorcode,autor_nombres,autor_apellidos,ciudad,pais) 
    VALUES (3, 'Aurelio Angel', 'Baldor de la Vega','La Habana','Cuba');


	/*Insercion de datos de centro de estudio */
	INSERT INTO centroestudio(cenestu_code, cenestu_nombre, cenestu_direccion, cenestu_telef ) 
    VALUES (1, 'Uleam', 'Calle 13 Av 225', '052385478');
	INSERT INTO centroestudio(cenestu_code, cenestu_nombre, cenestu_direccion, cenestu_telef ) 
	VALUES (2, 'Unidad Educativa Pedro Balda', 'Calle 15 Av 56', '052405478');
	
	/* Insercion de datos de bibliotecario */
	INSERT INTO bibliotecario(bibli_code, biblioteca_code, bibli_nombre, bibli_apellido, bibli_direccion, bibli_jornada, bibli_telefono) 
    VALUES (1, 1, 'Juan Carlos', 'Parrales Bailon', 'Calle 12 Av flavio', 'matutina', '0985062745');
	INSERT INTO bibliotecario(bibli_code, biblioteca_code, bibli_nombre, bibli_apellido, bibli_direccion, bibli_jornada, bibli_telefono) 
	VALUES (2, 1, 'Pedro Pepe', 'Zambrano Cedeño', 'Calle 10 Av 22', 'Vespertina', '0998765745');
	
	/* Insercion de datos de venta */
	INSERT INTO venta(venta_code, bibli_code, venta_fecha ) 
    VALUES (1, 1,'20/09/2020');
	INSERT INTO venta(venta_code, bibli_code, venta_fecha )
	VALUES (2, 2, '17/12/2020');
	
	/*Insercion de datos de editorial */
	INSERT INTO editorial(editorial_code, editorial_nombre) 
    VALUES (1, 'Hetzel');
	INSERT INTO editorial(editorial_code, editorial_nombre) 
	VALUES (2, 'Bloomsbury Publishing');
	INSERT INTO editorial(editorial_code, editorial_nombre) 
	VALUES (3, 'Grupo Editorial Patria');
	INSERT INTO editorial(editorial_code, editorial_nombre) 
	VALUES (4, 'Salamandra');
	INSERT INTO editorial(editorial_code, editorial_nombre) 
	VALUES (5, 'Editorial Cultura Cuba');
	
	/* Insercion de datos de edicion */
	INSERT INTO edicion(edicion_code, editorial_code, edicion) 
    VALUES (1, 4, 'Segunda edicion');
	INSERT INTO edicion(edicion_code, editorial_code, edicion) 
	VALUES (2, 5, 'Segunda edicion');
	INSERT INTO edicion(edicion_code, editorial_code, edicion) 
	VALUES (3, 1, 'Primera edicion');
	INSERT INTO edicion(edicion_code, editorial_code, edicion) 
	VALUES (4, 2, 'Primera edicion');
	INSERT INTO edicion(edicion_code, editorial_code, edicion) 
	VALUES (5, 3, 'Primera edicion');
	
	/*Insercion de datos de libros */
	INSERT INTO libro(libro_code, genero_code, editorial_code, biblioteca_code, edicion_code, isbn, libro_nombre, libro_fecha_publi, libro_descrip, versiondigital) 
    VALUES (1, 3, 2, 1, 4, '9780439362139', 'Harry Potter y la piedra filosofal', '30/06/1997', 'Harry Potter es un libro de aventura...', 'No');
	INSERT INTO libro(libro_code, genero_code, editorial_code, biblioteca_code, edicion_code, isbn, libro_nombre, libro_fecha_publi, libro_descrip, versiondigital) 
	VALUES (2, 3, 4, 1, 1, '9780539362146', 'Harry Potter y la piedra filosofal', '17/08/1999', 'Harry Potter es un libro de aventura...', 'No');
    INSERT INTO libro(libro_code, genero_code, editorial_code, biblioteca_code, edicion_code, isbn, libro_nombre, libro_fecha_publi, libro_descrip, versiondigital) 
	VALUES (3, 2, 1, 1, 3, '9780758311986', 'Viaje al centro de la tierra', '27/04/1865', 'Viaje al centro de la tierra es un libro inspirado en...', 'No');
   	INSERT INTO libro(libro_code, genero_code, editorial_code, biblioteca_code, edicion_code, isbn, libro_nombre, libro_fecha_publi, libro_descrip, versiondigital) 
    VALUES (4, 5, 3, 1, 5, '9786077445722', 'Algebra de Baldor', '03/09/1941', 'El algebra de baldor es un libro hecho para...', 'No');
    INSERT INTO libro(libro_code, genero_code, editorial_code, biblioteca_code, edicion_code, isbn, libro_nombre, libro_fecha_publi, libro_descrip, versiondigital) 
	VALUES (5, 5, 5, 1, 2, '9786077445737', 'Algebra de Baldor', '03/09/1967', 'El algebra de baldor es un libro hecho para...', 'No');

	/*Insercion de datos de proveedor */
	INSERT INTO proveedor(prov_code, prov_nombre, prov_direccion, prov_telefono, prov_email) 
    VALUES (1, 'Casa de la Cultura Ecuatoriana', 'Av. 6 de Diciembre N16-224 y Patria', '2902-274', 'patricio.herrera@casadelacultura.gob.ec');
	INSERT INTO proveedor(prov_code, prov_nombre, prov_direccion, prov_telefono, prov_email) 
	VALUES (2, 'Centro Abya-Yala', 'Av. 12 de Octubre N24-22 y Wilson', '3962-899','editorial@abyayala.org.ec');
	INSERT INTO proveedor(prov_code, prov_nombre, prov_direccion, prov_telefono, prov_email) 
	VALUES (3, 'Girándula', 'Urbanización El Bosque N43-32 y E. Carvajal', '2240-002', 'girandula2013@gmail.com');
	
	/* Insercion de datos de asquisicion_libro */
	INSERT INTO adquisicion_libro(adqui_code, libro_code, prov_code, adqui_fecha, adqui_costo ) 
    VALUES (1,1,3, '20/05/2018', '105.50');
	INSERT INTO adquisicion_libro(adqui_code, libro_code, prov_code, adqui_fecha, adqui_costo ) 
	VALUES (2,2,2, '10/12/2019', '160.50');	
	INSERT INTO adquisicion_libro(adqui_code, libro_code, prov_code, adqui_fecha, adqui_costo ) 
	VALUES (3,3,1, '07/01/2020', '200.75');
	INSERT INTO adquisicion_libro(adqui_code, libro_code, prov_code, adqui_fecha, adqui_costo ) 
	VALUES (4,4,3, '05/12/2020', '120.50');
	INSERT INTO adquisicion_libro(adqui_code, libro_code, prov_code, adqui_fecha, adqui_costo ) 
	VALUES (5,5,2, '11/03/2020', '170.50');
	
	/* Insercion de datos de cliente */
	INSERT INTO cliente(cliente_code, cenestu_code, ciudad_code, cliente_cedula, cliente_nombres, cliente_apellidos, cliente_telef, cliente_direccion) 
    VALUES (1,2,1, '1351528514', 'Juan Pablo', 'Rivera Loor', '0985463178', 'calle 12 av 11');
	INSERT INTO cliente(cliente_code, cenestu_code, ciudad_code, cliente_cedula, cliente_nombres, cliente_apellidos, cliente_telef, cliente_direccion) 
	VALUES (2,2,2, '1308707325', 'Pedro Paco', 'Gomez Cevallos', '0985463178', 'calle 9 av 17');	
	INSERT INTO cliente(cliente_code, cenestu_code, ciudad_code, cliente_cedula, cliente_nombres, cliente_apellidos, cliente_telef, cliente_direccion) 
	VALUES (3,1,1, '1301237325', 'Aracely Paula', 'Jairala Baque', '0985463178', 'calle 13 av circunvalacion');
	INSERT INTO cliente(cliente_code, cenestu_code, ciudad_code, cliente_cedula, cliente_nombres, cliente_apellidos, cliente_telef, cliente_direccion) 
	VALUES (4,1,2, '1308707142', 'Mary Perez', 'Pico Mendoza', '0985463178', 'calle 17 av 5');
	INSERT INTO cliente(cliente_code, cenestu_code, ciudad_code, cliente_cedula, cliente_nombres, cliente_apellidos, cliente_telef, cliente_direccion) 
	VALUES (5,1,2, '1308704425', 'Julio Profe', 'Macias Bailon', '0985463178', 'calle 15 av 11');
	
	/* Insercion de datos de detalleventa */
	INSERT INTO detalleventa(dventa_code, venta_code, libro_code, cantidad, precio ) 
    VALUES (1,1,3,2, '55.99');
	INSERT INTO detalleventa(dventa_code, venta_code, libro_code, cantidad, precio ) 
	VALUES (2,2,1,3, '49.99');	
	
	/* Insercion de datos de estadoprestamo */
	INSERT INTO estadoprestamo(estado_code, estado ) 
    VALUES (1, 'Bien');
	INSERT INTO estadoprestamo(estado_code, estado ) 
	VALUES (2, 'Mal');
	
	/* Insercion de datos de prestamo */
	INSERT INTO prestamo(prestamo_code, cliente_code, libro_code, bibli_code, estado_code, fecha_prestamo, fecha_max_devolucion, fecha_real_devolucion, precio_prestamo) 
    VALUES (1,3,2,1,1, '10/10/2019', '10/11/2019', '09/11/2019', '5.99');
	INSERT INTO prestamo(prestamo_code, cliente_code, libro_code, bibli_code, estado_code, fecha_prestamo, fecha_max_devolucion, fecha_real_devolucion, precio_prestamo) 
	VALUES (2,3,1,1,1, '15/11/2019', '15/12/2019', '09/11/2019', '5.99');
    INSERT INTO prestamo(prestamo_code, cliente_code, libro_code, bibli_code, estado_code, fecha_prestamo, fecha_max_devolucion, fecha_real_devolucion, precio_prestamo) 
	VALUES (3,3,3,1,2, '20/01/2020', '20/02/2020', '25/02/2020', '6.99');
    INSERT INTO prestamo(prestamo_code, cliente_code, libro_code, bibli_code, estado_code, fecha_prestamo, fecha_max_devolucion, fecha_real_devolucion, precio_prestamo) 
	VALUES (4,1,2,2,1, '30/01/2020', '28/02/2020', '24/02/2020', '8.99');
    INSERT INTO prestamo(prestamo_code, cliente_code, libro_code, bibli_code, estado_code, fecha_prestamo, fecha_max_devolucion, fecha_real_devolucion, precio_prestamo) 
	VALUES (5,4,4,1,1, '11/03/2020', '11/04/2020', '24/03/2020', '4.99');
	INSERT INTO prestamo(prestamo_code, cliente_code, libro_code, bibli_code, estado_code, fecha_prestamo, fecha_max_devolucion, fecha_real_devolucion, precio_prestamo) 
	VALUES (6,4,4,1,1, '25/03/2020', '25/04/2020', '','5.99');
	INSERT INTO prestamo(prestamo_code, cliente_code, libro_code, bibli_code, estado_code, fecha_prestamo, fecha_max_devolucion, fecha_real_devolucion, precio_prestamo) 
	VALUES (7,2,5,1,1, '26/04/2020', '26/05/2020', '23/05/2020', '9.99');
	INSERT INTO prestamo(prestamo_code, cliente_code, libro_code, bibli_code, estado_code, fecha_prestamo, fecha_max_devolucion, fecha_real_devolucion, precio_prestamo) 
	VALUES (8,5,5,2,2, '12/07/2019', '12/08/2019', '','5.99');

	/* Insercion de datos de multas */
	INSERT INTO multas(multa_code, prestamo_code, multa_descripcion, multa_valor, multa_fecha ) 
    VALUES (1,3,'Se atrazó 5 dias en la devolucion','5.50', '25/02/2020');
	INSERT INTO multas(multa_code, prestamo_code, multa_descripcion, multa_valor, multa_fecha ) 
	VALUES (2,6,'Hasta el dia de hoy no aparece con el libro','5.50', '30/04/2020');
	INSERT INTO multas(multa_code, prestamo_code, multa_descripcion, multa_valor, multa_fecha ) 
	VALUES (3,8,'Hasta el dia de hoy no aparece con el libro','5.50', '18/08/2019');
	
		

