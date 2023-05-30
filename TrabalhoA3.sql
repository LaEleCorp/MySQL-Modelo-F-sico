USE trabalhoa3;

CREATE TABLE IF NOT EXISTS Gerenciamento_Produto (
	
	fk_produto INTEGER,
    fk_funcionario INTEGER,
    
    FOREIGN KEY (fk_produto) REFERENCES produto (Id_Produto),
    FOREIGN KEY (fk_funcionario) REFERENCES funcionario (Id_Funcionario)
    

);

CREATE TABLE IF NOT EXISTS Fornecimento (
	
	fk_produto INTEGER,
    fk_fornecedor INTEGER,
    
    FOREIGN KEY (fk_produto) REFERENCES produto (Id_Produto),
    FOREIGN KEY (fk_fornecedor) REFERENCES fornecedor (Id_Fornecedor)
    

);

CREATE TABLE IF NOT EXISTS Vendas (
	
	fk_produto INTEGER,
    fk_relatorio INTEGER,
    
    FOREIGN KEY (fk_produto) REFERENCES produto (Id_Produto),
    FOREIGN KEY (fk_relatorio) REFERENCES relatorio_de_venda (Id_Relatorio)
    

);


CREATE TABLE IF NOT EXISTS Estoque (
	
    Id_Estoque INTEGER AUTO_INCREMENT,
    Nome_Estoque VARCHAR (100),
    Endereço VARCHAR (100),
    Quantidade INTEGER NOT NULL,
    
    PRIMARY KEY ( Id_Estoque)

);

CREATE TABLE IF NOT EXISTS Fornecedor (
	
    Id_Fornecedor INTEGER AUTO_INCREMENT,
    Nome_Fornecedor VARCHAR (100),
    CNPJ VARCHAR (20),
    
    PRIMARY KEY (Id_Fornecedor)

);


CREATE TABLE IF NOT EXISTS Relatorio_De_Venda (
	
    Id_Relatorio INTEGER AUTO_INCREMENT,
    Data_Venda DATE,
    Valor_Venda DOUBLE,
    
    PRIMARY KEY (Id_Relatorio)

);

CREATE TABLE IF NOT EXISTS Produto (
	
    Id_Produto INTEGER AUTO_INCREMENT,
    Nome_Produto VARCHAR (10),
    Preço VARCHAR (100),
    
    PRIMARY KEY (Id_Produto)

);

CREATE TABLE IF NOT EXISTS Funcionario (
	
    Id_Funcionario INTEGER AUTO_INCREMENT,
    Senha VARCHAR (10),
    Nome VARCHAR (100),
    
    PRIMARY KEY ( Id_Funcionario)

);


INSERT INTO Estoque (Nome_Estoque, Endereço, Quantidade) VALUES
('Estoque 1', 'Endereço 1', 100),
('Estoque 2', 'Endereço 2', 200),
('Estoque 3', 'Endereço 3', 150),
('Estoque 4', 'Endereço 4', 120),
('Estoque 5', 'Endereço 5', 180),
('Estoque 6', 'Endereço 6', 90),
('Estoque 7', 'Endereço 7', 230),
('Estoque 8', 'Endereço 8', 140),
('Estoque 9', 'Endereço 9', 170),
('Estoque 10', 'Endereço 10', 110);


INSERT INTO Fornecedor (Nome_Fornecedor, CNPJ) VALUES
('Fornecedor 1', '12345678901234'),
('Fornecedor 2', '98765432109876'),
('Fornecedor 3', '56789012345678'),
('Fornecedor 4', '01234567890123'),
('Fornecedor 5', '45678901234567'),
('Fornecedor 6', '89012345678901'),
('Fornecedor 7', '23456789012345'),
('Fornecedor 8', '67890123456789'),
('Fornecedor 9', '01234567890123'),
('Fornecedor 10', '45678901234567');


INSERT INTO Relatorio_De_Venda (Data_Venda, Valor_Venda) VALUES
('2023-01-01', 1000.50),
('2023-02-01', 1500.75),
('2023-03-01', 2000.25),
('2023-04-01', 1200.35),
('2023-05-01', 1800.20),
('2023-06-01', 900.75),
('2023-07-01', 2300.40),
('2023-08-01', 1400.60),
('2023-09-01', 1700.80),
('2023-10-01', 1100.95);


INSERT INTO Produto (Nome_Produto, Preço) VALUES
('Produto 1', '10.99'),
('Produto 2', '5.99'),
('Produto 3', '15.99'),
('Produto 4', '8.99'),
('Produto 5', '12.99'),
('Produto 6', '7.99'),
('Produto 7', '9.99'),
('Produto 8', '11.99'),
('Produto 9', '14.99'),
('Produto 10', '6.99');


INSERT INTO Funcionario (Senha, Nome) VALUES
('senha1', 'Funcionario 1'),
('senha2', 'Funcionario 2'),
('senha3', 'Funcionario 3'),
('senha4', 'Funcionario 4'),
('senha5', 'Funcionario 5'),
('senha6', 'Funcionario 6'),
('senha7', 'Funcionario 7'),
('senha8', 'Funcionario 8'),
('senha9', 'Funcionario 9'),
('senha10', 'Funcionario 10');


INSERT INTO Gerenciamento_Produto (fk_produto, fk_funcionario) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO Fornecimento (fk_produto, fk_fornecedor) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO Vendas (fk_produto, fk_relatorio) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);


