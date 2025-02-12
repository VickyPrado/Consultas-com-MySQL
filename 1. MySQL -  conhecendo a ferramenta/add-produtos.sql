USE sucos;

INSERT INTO tbproduto (
PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA
) VALUES (
'1037797', 'Clean - 2 Litros - Laranja', 'PET', '2 Litros', 'Laranja', 16.01);
INSERT INTO tbproduto (
PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA
) VALUES (
'1000889', 'Sabor da Montanha - 700 ml - Uva', 'Garrafa', '700 ml', 'Uva', 6.31);
INSERT INTO tbproduto (
PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA
) VALUES (
'1004327', 'Videira do Campo - 1,5 Litros - Melância', 'PET', '1,5 Litros', 'Melância', 19.51);

INSERT INTO tbproduto (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES
('544931', 'Frescor do Verão - 350 ml - Limão', 'PET', '350 ml','Limão',3.20);

INSERT INTO tbproduto (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES
('1078680', 'Frescor do Verão - 470 ml - Manga', 'Lata', '470 ml','Manga',5.18);

SELECT * FROM tbproduto;


