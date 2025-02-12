SELECT * FROM alugueis;

SELECT 
(SELECT COUNT(*) FROM alugueis) as Aluguéis,
(SELECT COUNT(*) FROM avaliacoes) as Avaliações,
(SELECT COUNT(*) FROM clientes) as Clientes,
(SELECT COUNT(*) FROM enderecos) as Endereços,
(SELECT COUNT(*) FROM hospedagens) as Hospedagens,
(SELECT COUNT(*) FROM proprietarios) as Proprietários;