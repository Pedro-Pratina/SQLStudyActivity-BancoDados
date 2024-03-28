/*Criar e usar o Banco de Dados*/
CREATE DATABASE IF NOT EXISTS trabalho;
USE trabalho;

/*Tabela do cliente*/
CREATE TABLE IF NOT EXISTS clientes(
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_cliente VARCHAR(80) NOT NULL,
    email_cliente VARCHAR(100) NOT NULL, /* Permitindo mais caracteres para o email */
    celular INT(11) NOT NULL,
    nasc_cliente DATE NOT NULL,
    CHECK (nasc_cliente < '2006-01-01')
);

/*Tabela de produto*/
CREATE TABLE IF NOT EXISTS produtos(
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(50) NOT NULL,
    preco_produto DECIMAL(10,2) NOT NULL, /* Aumentando a precisão do preço */
    descricao_produto VARCHAR(200) NOT NULL,
    quant_estoque INT(4) NOT NULL
);

/*Tabela de pedidos*/
CREATE TABLE IF NOT EXISTS pedidos(
    num_pedido INT AUTO_INCREMENT PRIMARY KEY,
    data_compra DATE,
    valor_total DECIMAL(10,2),
    data_entrega DATE,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

/*Tabela de itens*/
CREATE TABLE IF NOT EXISTS itens(
    id_itens INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_produto INT,
    quant_produto INT(3),
    preco_unitario DECIMAL(10,2),
    preco_total DECIMAL(10,2),
    FOREIGN KEY (id_pedido) REFERENCES pedidos(num_pedido),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);