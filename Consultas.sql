/* CONSULTA 1 Clientesquedado bien*/
/* Mostrar la cantidad de veces que un cliente a quedado bien y quedado mal en devoluciones de los libros. */
select cliente.cliente_nombres,
count (*) as P_Bien
from prestamo inner join cliente on prestamo.cliente_code = cliente.cliente_code
	inner join estadoprestamo on estadoprestamo.estado_code = prestamo.estado_code 
	where estadoprestamo.estado_code = 1
	group by cliente.cliente_nombres

/* CONSULTA 1 clientes quedado mal*/
/* Mostrar la cantidad de veces que un cliente a quedado bien y quedado mal en devoluciones de los libros. */
select cliente.cliente_nombres,
count (*) as P_mal
from prestamo inner join cliente on prestamo.cliente_code = cliente.cliente_code
	inner join estadoprestamo on estadoprestamo.estado_code = prestamo.estado_code 
	where estadoprestamo.estado_code = 2
	group by cliente.cliente_nombres


/* CONSULTA 2 */
/* Mostrar la cantidad de veces que los libros a sido prestado sin importar cuantas ediciones haya. */

select
	libro.libro_nombre as libro,  
	count(libro.libro_code) as cantidad_prestada
	
from
	libro 
		inner join prestamo on libro.libro_code = prestamo.libro_code
					
group by libro.libro_nombre
order by cantidad_prestada desc;



/* CONSULTA 3 */
/* Mostrar por año a los proveedores de la biblioteca y cuantos libros se le a adquirido a cada uno */

select
	proveedor.prov_nombre as Proveedor,  
	extract(year from adquisicion_libro.adqui_fecha) as año,
	count(adquisicion_libro.libro_code) as cantidad
from
	proveedor 
		inner join adquisicion_libro on proveedor.prov_code = adquisicion_libro.prov_code
		inner join libro on adquisicion_libro.libro_code = libro.libro_code
				
group by proveedor.prov_nombre,  adquisicion_libro.adqui_fecha
order by año desc;



/* CONSULTA 4 */
/* Mostrar por año los libros que no han sido devueltos y por lo tanto se han perdido. */

select extract(year from prestamo.fecha_prestamo) as año,
count (*) as cantidad_libros_perdidos
from prestamo  
where prestamo.fecha_real_devolucion is null
group by año





