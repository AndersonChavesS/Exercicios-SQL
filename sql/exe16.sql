CREATE TABLE vendas(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(150) NOT NULL,
	preco NUMERIC(8,2) NOT NULL,
	quantidade INTEGER NOT NULL,
	data_venda DATE
);

SELECT * FROM 	vendas;

// 16 - Suponha que você esteja trabalhando em uma empresa que desenvolve sistemas para gerenciamento de vendas
// de produtos. A equipe de desenvolvimento precisa criar uma tabela no banco de dados para armazenar as informações
// dos produtos vendidos. A tabela precisa ter os seguintes campos: "id"(chave primária), "nome"(texto),
// "preço"(numérico), "quantidade"(inteiro), "data_venda"(datta).
	
INSERT INTO vendas(nome, preco, quantidade, data_venda)
VALUES('Camiseta', 29.90, 20, '2024-06-09');

INSERT INTO vendas(nome, preco, quantidade, data_venda)
VALUES
('Tênis', 149.90, 6, '2024-06-09'),
('Celular', 1499.90, 7, '2024-06-09'),
('Notebook', 3999.90, 3, '2024-06-09'),
('Monitor', 749.90, 3, '2024-06-09'),
('Cadeira de escritório', 1349.90, 2, '2024-06-09'),
('Mochila', 99.90, 5, '2024-06-09'),
('Mouse', 49.90, 5, '2024-06-09'),	
('Teclado', 79.90, 10, '2024-06-09'),
('Caixa de som', 139.90, 6, '2024-06-09');