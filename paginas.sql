USE `chaco_print`;
DROP function IF EXISTS `paginas`;

USE `chaco_print`;
DROP function IF EXISTS `chaco_print`.`paginas`;
;

DELIMITER $$
USE `chaco_print`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `paginas`(cod_cliente int) RETURNS int
    READS SQL DATA
BEGIN
    declare consulta int;
    select sum(contador)  into consulta from equipo where id_cliente = (select id_cliente from cliente where id_cliente = cod_cliente);
    RETURN consulta;
END$$

DELIMITER ;
;