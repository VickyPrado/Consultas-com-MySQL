USE `insightplaces`;
DROP PROCEDURE IF EXISTS `insightplaces`.`novoAluguel_34`;

DELIMITER $$
USE `insightplaces`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `novoAluguel_34`
(vAluguel VARCHAR(10), vClienteNome VARCHAR(150), vHospedagem VARCHAR(10), vDataInicio DATE, vDataFinal DATE, vPrecoUnitario DECIMAL(10,2))
BEGIN
	DECLARE vCliente VARCHAR(10);
    DECLARE vDias INTEGER DEFAULT 0;
    DECLARE vNumCliente INTEGER;
    DECLARE vPrecoTotal DECIMAL(10,2);
	DECLARE vMensagem VARCHAR(100);
    DECLARE EXIT HANDLER FOR 1452
    BEGIN
		SET vMensagem = "Problema de chave estrangeira associado a alguma entidade da base.";
		SELECT vMensagem;
    END;	
    SET vNumCliente = (SELECT COUNT(*) FROM clientes WHERE nome = vClienteNome);
    CASE vNumCliente
    WHEN 0 THEN
		SET vMensagem = "Este cliente não pode ser usado para incluir aluguel porque não existe";
		SELECT vMensagem;
    WHEN 1 THEN
		SET vDias = (SELECT DATEDIFF(vDataFinal, vDataInicio));
		SET vPrecoTotal = vDias * vPrecoUnitario;
		SELECT cliente_id INTO vCliente FROM clientes WHERE nome = vClienteNome;
		INSERT INTO alugueis VALUES (vAluguel, vCliente, vHospedagem, vDataInicio, vDataFinal, vPrecoTotal);
        SET vMensagem = "Aluguel incluído na base com sucesso.";
        SELECT vMensagem;
    ELSE
		SET vMensagem = "Este cliente não pode ser usado para incluir aluguel porque não existe";
		SELECT vMensagem;
    END CASE;    		
END$$
DELIMITER ;

CALL novoAluguel_34('10011','Victorino Vila','8635','2023-03-30','2023-04-04',40);
CALL novoAluguel_34('10011','Júlia Pires','2023-03-30','2023-04-04',40);
CALL novoAluguel_34('10011','Luana Moura','8635','2023-03-30','2023-04-04',40);


