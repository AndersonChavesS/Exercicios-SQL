CREATE TABLE vendas(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(200) NOT NULL,
	preco NUMERIC(8,2) NOT NULL,
	quantidade INTEGER NOT NULL,
	data_venda DATE
);

SELECT * FROM vendas;

INSERT INTO vendas(nome, preco, quantidade, data_venda)
VALUES('Camiseta', 49.90, 15, '2024-05-19');

INSERT INTO vendas(nome, preco, quantidade, data_venda)
VALUES
('Tênis', 149.90, 8, '2024-03-22'),
('Celular', 1449.90, 7, '2024-03-24'),
('Notebook', 3449.90, 2, '2024-03-25'),
('Monitor', 949.90, 1, '2024-04-15'),
('Cadeira de escritório', 1149.90, 1, '2024-04-26'),
('Mochila', 99.90, 2, '2024-05-06'),
('Mouse', 49.90, 10, '2024-05-15'),
('Teclado', 149.90, 3, '2024-06-02'),
('Caixa de som', 189.90, 5, '2024-06-07');





SELECT
	nome, preco, data_venda
FROM
	vendas
WHERE
	preco > 100
AND
	quantidade > 3
AND ( data_venda BETWEEN '2024-05-09' AND '2024-06-09' )
ORDER BY
	data_venda

SELECT
	nome, quantidade, data_venda
FROM
	vendas
WHERE
	quantidade >= 2
AND	preco > 700
AND ( data_venda BETWEEN '2024-03-09' AND '2024-06-09' )	
AND	nome LIKE 'C%'





