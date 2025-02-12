CREATE VIEW ocupacao_por_regiao_tempo AS
SELECT
	r.regiao,
	YEAR(data_inicio) AS ano,
	MONTH(data_inicio) AS mes,
    COUNT(*) AS total_alugueis
FROM 
	alugueis a
JOIN 
	hospedagens h ON a.hospedagem_id = h.hospedagem_id
JOIN 
	enderecos e ON h.endereco_id = e.endereco_id
JOIN
	regioes_geograficas r ON r.estado = e.estado
GROUP BY
	r.regiao, YEAR(data_inicio), MONTH(data_inicio)
ORDER BY
	r.regiao, ano, mes;
    
    
SELECT * FROM ocupacao_por_regiao_tempo;

SELECT * FROM ocupacao_por_regiao_tempo
WHERE regiao = 'Sudeste' AND ano = 2023;