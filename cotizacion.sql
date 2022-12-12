USE `chaco_print`;
DROP function IF EXISTS `cotizacion`;

USE `chaco_print`;
DROP function IF EXISTS `chaco_print`.`cotizacion`;
;

DELIMITER $$
USE `chaco_print`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `cotizacion`(codigo_interno int) RETURNS float(11,2)
    READS SQL DATA
BEGIN
    declare resultado float;
    declare dolarhoy float;
    declare impuesto float;
    declare costo varchar(100);
    set dolarhoy = 175.50;
    set costo = (select precio_producto from stock where cod_interno = codigo_interno);
    set resultado = (costo * dolarhoy) * 1.21;
    return resultado;
END$$

DELIMITER ;
;