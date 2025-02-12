SELECT * FROM alugueis;
SELECT * FROM hospedagens;
SELECT * FROM clientes;

SELECT NOW() DATAATUAL;

SELECT DATEDIFF(data_fim, data_inicio) AS TotalDias FROM alugueis;

SELECT TRIM(nome) AS Nome, DATEDIFF(data_fim, data_inicio) AS TotalDias
FROM alugueis a
JOIN clientes c
ON a.cliente_id = c.cliente_id;

SELECT tipo AS Tipo, SUM(DATEDIFF(data_fim, data_inicio)) AS TotalDias
FROM alugueis a
JOIN hospedagens h
ON a.hospedagem_id = h.hospedagem_id
GROUP BY tipo DESC;