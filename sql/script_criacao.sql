CREATE DATABASE dbloja;
USE dbloja;



CREATE TABLE loja (
    id_loja INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(200)
);

CREATE TABLE departamento (
    id_departamento INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_loja INT NOT NULL,  
    FOREIGN KEY (id_loja) REFERENCES loja(id_loja) ON DELETE RESTRICT
);

CREATE TABLE produto (
    id_produto INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2) NOT NULL,  
    quantidade_estoque INT NOT NULL DEFAULT 0, 
    id_departamento INT NOT NULL,  
    FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento) ON DELETE RESTRICT
);

CREATE TABLE funcionario (
    id_funcionario INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,  
    login VARCHAR(50) NOT NULL,  
    senha VARCHAR(100) NOT NULL, 
    id_loja INT NOT NULL,  
    FOREIGN KEY (id_loja) REFERENCES loja(id_loja) ON DELETE RESTRICT
);

CREATE TABLE venda (
    id_venda INT PRIMARY KEY,
    data DATE NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL, 
    id_loja INT NOT NULL,  
    id_funcionario INT, 
    FOREIGN KEY (id_loja) REFERENCES loja(id_loja) ON DELETE RESTRICT,
    FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario) ON DELETE RESTRICT
);

CREATE TABLE item_venda (
    id_item INT PRIMARY KEY,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,  
    id_venda INT NOT NULL,  
    id_produto INT NOT NULL, 
    FOREIGN KEY (id_venda) REFERENCES venda(id_venda) ON DELETE RESTRICT,
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto) ON DELETE RESTRICT
);

CREATE TABLE fornecedor (
    id_fornecedor INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    contato VARCHAR(100)
);

CREATE TABLE pedido_reposicao (
    id_pedido INT PRIMARY KEY,
    data DATE NOT NULL,
    status VARCHAR(50) NOT NULL,  
    id_fornecedor INT NOT NULL,  
    id_produto INT NOT NULL,  
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id_fornecedor) ON DELETE RESTRICT,
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto) ON DELETE RESTRICT
);



	

 



    

    
	
	
    

	