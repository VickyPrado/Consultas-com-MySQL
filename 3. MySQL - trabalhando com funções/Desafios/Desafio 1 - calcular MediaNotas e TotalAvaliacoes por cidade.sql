SELECT 
    UPPER(e.cidade) AS Cidade,
    COUNT(a.avaliacao_id) AS TotalAvaliacoes,
    AVG(a.nota) AS MediaNotas
FROM 
    avaliacoes a
JOIN 
    hospedagens h ON a.hospedagem_id = h.hospedagem_id
JOIN 
    enderecos e ON h.endereco_id = e.endereco_id
GROUP BY 
    e.cidade
ORDER BY 
    MediaNotas DESC, TotalAvaliacoes DESC;