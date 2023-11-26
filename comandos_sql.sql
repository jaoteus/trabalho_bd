-- Criar banco de dados
create database vendas;

-- Criar tabela clientes
CREATE TABLE clientes (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  endereco VARCHAR(255),
  telefone VARCHAR(255),
  e_mail VARCHAR(255),
  PRIMARY KEY (id)
);

-- Criar tabela produtos
CREATE TABLE produtos (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  descricao VARCHAR(255),
  preco DECIMAL(10,2) NOT NULL,
  estoque INT,
  PRIMARY KEY (id)
);

-- Criar tabela pedidos
CREATE TABLE pedidos (
  id INT NOT NULL AUTO_INCREMENT,
  data DATE NOT NULL,
  cliente_id INT NOT NULL,
  produto_id INT NOT NULL,
  quantidade INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (cliente_id) REFERENCES clientes (id),
  FOREIGN KEY (produto_id) REFERENCES produtos (id)
);


-- inserir dados na tabela clientes
insert into clientes
(nome, e_mail, telefone, endereco) values
("João da Silva", "joao.da.silva@email.com", "(81) 99999-9999", "Rua a, 1"),
("Maria da Costa", "maria.da.costa@email.com", "(81) 98888-8888", "Rua b, 2"),
("José dos Santos", "jose.dos.santos@email.com", "(81) 97777-7777", "Rua c, 3"),
("Ana Paula", "ana.paula@email.com", "(81) 96666-6666", "Rua d, 4"),
("Pedro Henrique", "pedro.henrique@email.com", "(81) 95555-5555", "Rua e, 5"),
("Fernanda Oliveira", "fernanda.oliveira@email.com", "(81) 94444-4444", "Rua f, 6"),
("Carlos Alberto", "carlos.alberto@email.com", "(81) 93333-3333", "Rua g, 7"),
("Letícia Souza",  "leticia.souza@email.com", "(81) 92222-2222", "Rua h, 8"),
("Gustavo Barbosa", "gustavo.barbosa@email.com", "(81) 91111-1111", "Rua i, 9"),
("Bruna Santos", "bruna.santos@email.com", "(81) 90000-0000", "Rua j, 10"),
("Rafaela Silva", "rafaela.silva@email.com", "(81) 99999-9998", "Rua k, 11"),
("Lucas Pereira", "lucas.pereira@email.com", "(81) 98888-8887", "Rua l, 12"),
("Camila Lima", "camila.lima@email.com", "(81) 97777-7776", "Rua m, 13"),
("Bernardo Souza", "bernardo.souza@email.com", "(81) 96666-6665", "Rua n, 14"),
("Taísa Costa", "taisa.costa@email.com", "(81) 95555-5554", "Rua o, 15"),
("Matheus Oliveira", "matheus.oliveira@email.com", "(81) 94444-4443", "Rua p, 16"),
("Amanda Barbosa", "amanda.barbosa@email.com", "(81) 93333-3332", "Rua q, 17"),
("Thiago Santos", "thiago.santos@email.com", "(81) 92222-2221", "Rua r, 18"),
("Carolina Silva", "carolina.silva@email.com", "(81) 91111-1110", "Rua s, 19"),
("Guilherme Pereira", "guilherme.pereira@email.com", "(81) 90000-0009", "Rua t, 20");


-- Inserir dados na tabela produtos
insert into produtos
(nome, descricao, preco, estoque) values
('Samsung s22', 'smartphone da samsung', 3450, 15),
('Samsung s23', 'smartphone da samsung', 5430, 55),
('Samsung s22 ultra', 'smartphone da samsung', 6700, 65),
('Samsung s23 ultra', 'smartphone da samsung', 8550, 25),
('Samsung A10s', 'smartphone da samsung', 1150, 15),
('Samsung a30', 'smartphone da samsung', 1990.99, 13),
('Samsung a50s', 'smartphone da samsung', 4450, 19),
('Samsung a70', 'smartphone da samsung', 5380, 5),
('Samsung NOte 10', 'smartphone da samsung', 8450, 35),
('Motorola Moto G52', 'smartphone da Motorola', 1200, 15),
('Motorola Moto G72', 'smartphone da Motorola', 4500, 15),
('Motorola Moto One G55', 'smartphone da Motorola', 3200, 15),
('Motorola Moto G82', 'smartphone da Motorola', 8200, 15),
('Motorola Moto G22', 'smartphone da Motorola', 2300, 15),
('Motorola Moto G32', 'smartphone da Motorola', 1400, 15);

-- Inserir dados na tabela pedidos
insert into pedidos
(data, cliente_id, produto_id, quantidade) values
('2023-07-11', 8, 12, 3),
('2023-03-13', 10, 13, 5),
('2023-11-12', 11, 8, 7),
('2023-06-01', 9, 15, 510),
('2023-04-11', 23, 22, 23),
('2023-01-19', 20, 21, 1),
('2023-09-21', 12, 15, 2),
('2023-10-13', 25, 13, 34),
('2023-06-22', 13, 9, 12),
('2023-08-24', 12, 19, 7),
('2023-03-27', 15, 17, 9),
('2023-05-29', 17, 14, 5),
('2023-02-18', 16, 16, 29),
('2023-11-24', 14, 12, 100),
('2023-09-22', 19, 20, 39),
('2023-07-06', 20, 10, 4),
('2023-10-20', 21, 11, 2);


