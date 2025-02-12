USE `insightplaces`;
DROP PROCEDURE IF EXISTS `insightplaces`.`novoAluguel_43`;

DELIMITER $$
USE `insightplaces`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `inclusao_cliente_43`(
    vAluguel VARCHAR(10), 
    vCliente VARCHAR(10), 
    vHospedagem VARCHAR(10), 
    vDataInicio DATE, 
    vDataFinal DATE, 
    vDias INTEGER, 
    vPrecoUnitario DECIMAL(10,2))
BEGIN
    DECLARE VPrecoTotal DECIMAL(10,2);
    SET VPrecoTotal = vDias * vPrecoUnitario;
    INSERT INTO alugueis 
    VALUES (vAluguel, vCliente, vHospedagem, vDataInicio, vDataFinal, VPrecoTotal);
END