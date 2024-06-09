CREATE TABLE clientes(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	email VARCHAR(150) NOT NULL
);


CREATE TABLE pedidos(
	id SERIAL PRIMARY KEY,
	cliente_id INTEGER NOT NULL,
	produto VARCHAR(200) NOT NULL,
	preco NUMERIC(8,2) NOT NULL,
	quantidade INTEGER NOT NULL,
	data_pedido DATE NOT NULL,
	CONSTRAINT fk_pedidos_clientes FOREIGN KEY (cliente_id) REFERENCES clientes (id)
);




INSERT INTO clientes (nome, email)
VALUES
	('João', 'joao@email.com'),
	('Maria', 'maria@email.com'),
	('Lucas', 'lucas@email.com');

select * from clientes;

INSERT INTO pedidos (cliente_id, produto, preco, quantidade, data_pedido) VALUES
(1, 'Camiseta', 29.90, 2, '2022-03-20'),
(2, 'Tênis', 149.90, 1, '2022-03-21'),
(1, 'Celular', 1199.90, 1, '2022-03-21'),
(3, 'Notebook', 3999.90, 1, '2022-03-21'),
(2, 'Monitor', 799.90, 2, '2022-03-22'),
(3, 'Cadeira de escritório', 399.90, 3, '2022-03-22'),
(1, 'Mochila', 89.90, 1, '2022-03-22'),
(2, 'Mouse', 49.90, 2, '2022-03-22'),
(3, 'Teclado', 79.90, 1, '2022-03-22'),
(1, 'Caixa de som', 129.90, 1, '2022-03-22');

select * from pedidos;



SELECT
	c.nome, p.produto, p.data_pedido
FROM clientes c
	INNER JOIN pedidos p ON c.id = p.cliente_id
WHERE
	p.data_pedido = '2022-03-22'
ORDER BY
	c.nome ASC


SELECT
	c.nome, 
	c.email, 
	p.produto,
	(p.preco * p.quantidade) AS valor_total,
	p.data_pedido
FROM
	clientes c
	INNER JOIN pedidos p ON c.id = p.cliente_id
WHERE
	p.data_pedido BETWEEN '2022-03-20' AND '2022-03-21'
	AND p.produto NOT LIKE 'Notebook'
ORDER BY
	c.nome


