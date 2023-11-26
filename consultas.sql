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
