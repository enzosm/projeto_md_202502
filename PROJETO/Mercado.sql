-- Criar tabela de produtos 
CREATE TABLE produtos (
 id_produto INT PRIMARY KEY, 
nome VARCHAR(255), 
preco DECIMAL(10, 2)
 ); 

-- Criar tabela de compras 
CREATE TABLE compras ( 
id_compra INT PRIMARY KEY, 
data_compra DATE,
 total DECIMAL(10, 2)
 ); 

-- Criar tabela de itens_compra
 CREATE TABLE itens_compra ( 
id_item INT PRIMARY KEY,
 id_compra INT,
 id_produto INT, 
quantidade INT,
 preco_unitario DECIMAL(10, 2),
FOREIGN KEY (id_compra) REFERENCES compras(id_compra)
);

-- read
SELECT
compras.id_compra, 
compras.total,
itens_compra.id_compra,
itens_compra.preco_unitario

-- da tabela
FROM itens_compra 
INNER JOIN compras 
ON itens_compra.id_compra = compras.id_compra 

-- Inserir produtos 
INSERT INTO produtos (id_produto, nome, preco) 
VALUES 
((1, 'Arroz 5kg', 24.90),
(2, 'Feijão 1kg', 7.50),
(3, 'Óleo 900ml', 6.20),
(4, 'Café 500g', 12.80),
(5, 'Leite 1L', 4.50);

-- Registrar uma compra 
INSERT INTO compras (id_compra, data_compra, total) 
VALUES (1, '2025-03-16', 68.76) 

-- Excluir uma compra 
DELETE FROM itens_compra WHERE id_compra = 1; 
DELETE FROM compras  WHERE id_compra = 1;
