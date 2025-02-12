USE `insightplaces`;
DROP procedure IF EXISTS `insightplaces`.`novoAluguel_23`;

DELIMITER $$
USE `insightplaces`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `novoAluguel_23`
(vAluguel VARCHAR(10), vCliente VARCHAR(10), vHospedagem VARCHAR(10), vDataInicio DATE, vDataFinal DATE,
vPrecoTotal DECIMAL(10,2))
BEGIN
    INSERT INTO alugueis VALUES(vAluguel, vCliente, vHospedagem, vDataInicio, vDataFinal, vPrecoTotal);
END$$
DELIMITER ;

CALL novoAluguel_23('10002', '1003', '8635', '2023-03-06', '2023-03-10', '600');
SELECT * FROM alugueis WHERE aluguel_id = '10002';

CALL novoAluguel_23('10003', '1004', '8635', '2023-03-10', '2023-03-12', '250');
SELECT * FROM alugueis WHERE aluguel_id in ('10002', '10003');


