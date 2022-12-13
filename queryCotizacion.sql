use chaco_print;

select id_producto, nombre_producto , cotizacion(cod_interno) as Precio_en_pesos from stock where cod_interno = 5;