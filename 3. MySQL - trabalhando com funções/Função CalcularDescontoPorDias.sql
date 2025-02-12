-- MENOS DE 4 DIAS = 0%
-- 4 A 6 DIAS = 5%
-- 7 A 9 DIAS = 10%
-- 10 OU MAIS DIAS = 15%

SELECT 
	cliente_id,
    data_inicio,
    data_fim,
    DATEDIFF(data_fim, data_inicio) AS TotalDias,    
    CASE
		WHEN DATEDIFF(data_fim, data_inicio) BETWEEN 4 AND 6 THEN 5
        WHEN DATEDIFF(data_fim, data_inicio) BETWEEN 7 AND 9 THEN 10
        WHEN DATEDIFF(data_fim, data_inicio) >= 10 THEN 15
        ELSE 0
	END AS DescontoPencentual
FROM alugueis
WHERE aluguel_id = 1;


DELIMITER $$
CREATE FUNCTION CalcularDescontoPorDias(AluguelID INT)
RETURNS INT DETERMINISTIC
BEGIN

DECLARE Desconto INT;

SELECT
	CASE
		WHEN DATEDIFF(data_fim, data_inicio) BETWEEN 4 AND 6 THEN 5
        WHEN DATEDIFF(data_fim, data_inicio) BETWEEN 7 AND 9 THEN 10
        WHEN DATEDIFF(data_fim, data_inicio) >= 10 THEN 15
        ELSE 0
	END
    INTO desconto
FROM alugueis
WHERE aluguel_id = aluguelID;

RETURN desconto;
END$$

DELIMITER ;


SELECT CalcularDescontoPorDias(1);