DELIMITER $$

CREATE FUNCTION ContaTipoHospedagem(tipoHospedagem VARCHAR(255)) RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;

    SELECT COUNT(*) INTO total 
    FROM hospedagens 
    WHERE tipo = tipoHospedagem;

    RETURN total;
END$$

DELIMITER ;

SELECT ContaTipoHospedagem('Casa') AS TotalCasas;
