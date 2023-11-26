-- consulta 1:
SELECT id, nome, telefone
FROM clientes
WHERE telefone LIKE '%(81)%' OR telefone LIKE '%(86)%';
-- Irá filtrar o pessoal que possuem o DDD 81 ou DDD 86.

-- consulta 2
SELECT id, nome, preco
FROM produtos
WHERE preco BETWEEN 2000 AND 3000;
-- Ira filtrar pelo id, nome e preco, os produtos que possuem preços entre 2000 e 3000

-- consulta 3
SELECT *
FROM clientes
WHERE nome LIKE 'J%';
-- Esta consulta usa o operador LIKE para retornar todos os clientes com o nome começando com a letra "J".


-- Consulta 4
SELECT *
FROM clientes
WHERE endereco LIKE 'Rua a%';
-- Esta consulta usa o operador LIKE para retornar todos os clientes com o endereço começando com a rua "Rua a".

-- consulta 5
SELECT clientes.nome, clientes.endereco
FROM pedidos
INNER JOIN clientes
ON pedidos.cliente_id = clientes.id
INNER JOIN produtos
ON pedidos.produto_id = produtos.id
WHERE produtos.nome LIKE '%Motorola%';
-- Esta consulta usa duas junções internas (INNER JOIN) para retornar o nome e o endereço dos clientes que compraram o produto "Motorola". A consulta primeiro seleciona todos os pedidos, e depois usa o operador LIKE para retornar apenas os pedidos do produto "Motorola". Em seguida, a consulta usa a segunda junção interna para retornar o nome e o endereço dos clientes associados a esses pedidos.

-- consulta 6
SELECT produtos.nome, SUM(pedidos.quantidade) AS quantidade_vendida
FROM pedidos
INNER JOIN produtos
ON pedidos.produto_id = produtos.id
GROUP BY produtos.nome;
-- esta consulta usa uma junção interna (INNER JOIN) e uma função de agregação (SUM) para retornar o nome do produto e a quantidade vendida para cada cliente.

-- consulta 7
SELECT clientes.nome, SUM(pedidos.quantidade * produtos.preco) AS valor_total
FROM pedidos
INNER JOIN clientes
ON pedidos.cliente_id = clientes.id
INNER JOIN produtos
ON pedidos.produto_id = produtos.id
GROUP BY clientes.nome;
-- Esta consulta usa duas junções internas (INNER JOIN) e uma função de agregação (SUM) para retornar o nome do cliente e a quantidade total gasta em pedidos.

-- consulta 8
SELECT produtos.nome, MAX(pedidos.quantidade) AS quantidade_vendida
FROM pedidos
INNER JOIN produtos
ON pedidos.produto_id = produtos.id
GROUP BY produtos.nome
ORDER BY quantidade_vendida DESC
LIMIT 1;
-- Esta consulta usa uma junção interna (INNER JOIN), uma função de agregação (MAX) e uma ordenação (ORDER BY) para retornar o produto mais vendido. 

-- consulta 9
SELECT AVG(pedidos.quantidade) AS media_pedidos
FROM pedidos;
-- Esta consulta usa uma função de agregação (avg) para retornar a média de pedidos por cliente. A consulta primeiro seleciona todos os pedidos, e depois usa a função AVG para calcular a média da quantidade de pedidos por cliente.

-- consulta 10
SELECT *
FROM pedidos
ORDER BY data;
-- Esta consulta usa uma ordenação (ORDER BY) para retornar todos os pedidos, ordenados por data.

-- consulta 11
SELECT *
FROM clientes
ORDER BY nome;
-- Esta consulta usa uma ordenação (ORDER BY) para retornar todos os clientes, ordenados por nome.

-- consulta 12
SELECT produtos.nome, produtos.preco
FROM produtos
ORDER BY preco DESC;
-- Esta consulta usa uma ordenação (ORDER BY) para retornar os produtos mais caros, ordenados por preço.

-- consulta 13
SELECT clientes.nome, produtos.nome, pedidos.quantidade, produtos.preco
FROM pedidos
INNER JOIN clientes
ON pedidos.cliente_id = clientes.id
INNER JOIN produtos
ON pedidos.produto_id = produtos.id
WHERE produtos.preco > 5000
ORDER BY produtos.preco DESC;
-- Esta consulta usa uma junção interna (INNER JOIN), uma cláusula WHERE e uma ordenação (ORDER BY) para retornar os clientes que compraram um produto com um preço acima do valor 5000.

-- consulta 14
SELECT clientes.nome, produtos.preco
FROM pedidos
INNER JOIN clientes
ON pedidos.cliente_id = clientes.id
INNER JOIN produtos
ON pedidos.produto_id = produtos.id
WHERE produtos.preco BETWEEN 5000 AND 9000;
-- Esta consulta usa uma junção interna (INNER JOIN) para retornar todos os clientes que compraram um produto que o preço esta entre 5000 e 9000.

-- consulta 15
SELECT nome, e_mail
FROM clientes
WHERE e_mail LIKE '%@gmail.com' OR e_mail LIKE '%@hotmail.com' or e_mail  LIKE '%@email.com%';
-- Essa consulta retorna o nome e o e-mail de todos os clientes cujo e-mail termine com o domínio "gmail.com",  "hotmail.com" ou "email.com".

-- consulta 16
SELECT clientes.nome, produtos.nome, pedidos.quantidade
FROM clientes
INNER JOIN pedidos
ON clientes.id = pedidos.cliente_id
INNER JOIN produtos
ON pedidos.produto_id = produtos.id
WHERE pedidos.data > '2023-11-01';
-- Essa consulta retorna o nome do cliente, o nome do produto e a quantidade do pedido para todos os pedidos realizados após 01 de novembro de 2023.

-- consulta 17
SELECT clientes.nome, pedidos.data, produtos.nome, produtos.preco
FROM clientes
INNER JOIN pedidos
ON clientes.id = pedidos.cliente_id
INNER JOIN produtos
ON pedidos.produto_id = produtos.id
WHERE produtos.descricao  LIKE '%samsung%';
-- Essa consulta retorna o nome do cliente, a data do pedido, o nome do produto e o preço para todos os pedidos feito com a descrição "samsung".
