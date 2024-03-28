/*Parte dois do trabalho*/
use trabalho;

/*corrigindo o celular*/
alter table clientes modify column celular bigint(11);

/*pessoas*/
insert into clientes (nome_cliente, email_cliente, celular, nasc_cliente) values
('João Silva', 'joao@example.com', 11987654321, '1990-05-15'),
('Maria Santos', 'maria@example.com', 11998765432, '1985-08-25'),
('Pedro Oliveira', 'pedro@example.com', 11955443322, '1988-12-10'),
('Ana Souza', 'ana@example.com', 11999887766, '1975-03-20'),
('Lucas Ferreira', 'lucas@example.com', 11911223344, '1995-11-03'),
('Carla Lima', 'carla@example.com', 11966778899, '1980-07-12'),
('Mariana Costa', 'mariana@example.com', 11944332211, '1973-09-28'),
('Fernando Pereira', 'fernando@example.com', 11988997766, '1992-06-18'),
('Juliana Rodrigues', 'juliana@example.com', 11966778855, '1987-04-05'),
('Rafael Santos', 'rafael@example.com', 11999887755, '1983-02-14');

/*produtos*/
insert into produtos (nome_produto, preco_produto, descricao_produto, quant_estoque) values
('Camisa Polo', 29.99, 'Camisa polo de algodão', 50),
('Calça Jeans', 49.99, 'Calça jeans de corte reto', 30),
('Tênis Esportivo', 79.99, 'Tênis esportivo para corrida', 20),
('Celular Smartphone', 599.99, 'Smartphone com tela de 6 polegadas', 15),
('Mochila Escolar', 39.99, 'Mochila para escola com compartimento para laptop', 25),
('Fone de Ouvido Bluetooth', 29.99, 'Fone de ouvido sem fio com cancelamento de ruído', 40),
('Relógio de Pulso', 99.99, 'Relógio analógico com pulseira de couro', 10),
('Câmera Digital', 199.99, 'Câmera digital compacta de 20MP', 12),
('Óculos de Sol', 59.99, 'Óculos de sol polarizados', 18),
('Perfume Masculino', 79.99, 'Perfume importado com fragrância amadeirada', 8);

/*pedidos*/
insert into pedidos (data_compra, valor_total, data_entrega, id_cliente) values
('2024-03-15', 149.97, '2024-03-20', 1),
('2024-03-16', 79.98, '2024-03-25', 3),
('2024-03-17', 239.97, '2024-03-22', 5),
('2024-03-18', 159.96, '2024-03-24', 7),
('2024-03-19', 199.98, '2024-03-26', 9),
('2024-03-20', 69.99, '2024-03-27', 2),
('2024-03-21', 139.98, '2024-03-28', 4),
('2024-03-22', 219.96, '2024-03-29', 6),
('2024-03-23', 99.99, '2024-03-30', 8),
('2024-03-24', 179.97, '2024-03-31', 10);

/*conferindo se existe*/
select num_pedido from pedidos;

/*itens*/
insert into itens (id_pedido, id_produto, quant_produto, preco_unitario, preco_total) values
(1, 1, 3, 29.99, 89.97),
(2, 5, 2, 39.99, 79.98),
(3, 3, 1, 79.99, 79.99),
(4, 7, 2, 99.99, 199.98),
(5, 10, 1, 79.99, 79.99),
(6, 2, 1, 49.99, 49.99),
(7, 8, 3, 199.99, 599.97),
(8, 4, 1, 599.99, 599.99),
(9, 9, 2, 59.99, 119.98),
(10, 6, 1, 29.99, 29.99);

/*conferindo as tabelas*/
select * from itens;
select * from pedidos;
select * from produtos;
select * from clientes;

/*Foi consegui deu tudo certo*/