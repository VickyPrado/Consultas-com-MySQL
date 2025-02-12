SELECT 
	YEAR(data_inicio) AS ano,
    MONTH(data_inicio) AS mes,
    COUNT(*) AS total_alugueis
FROM
	alugueis
GROUP BY
	ano, mes
ORDER BY
	ano, mes;
    
    
SELECT
	MONTH(data_inicio) AS mes,
    COUNT(*) AS total_alugueis
FROM
	alugueis
GROUP BY
	mes
ORDER BY
	total_alugueis DESC;