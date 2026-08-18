-- PERGUNTAS QUE UM GESTOR DE ECOMMERCE FARIA NO DIA A DIA

-- consultas basicas

-- listar todos(as):
-- clientes,produtos,categorias,pedidos,pagamentos
-- select * from
-- RESPONDENDO PERGUNTAS DA FORMA MAIS SIMPLES POSSIVEL
-- QUAIS DADOS DE FATO EXISTEM NA TABELA
-- 7 consultas para cada uma das 7 tabelas

-- =====================================================
-- CONSULTA 01
-- Listar todos os clientes cadastrados
-- =====================================================
select * from clientes;

select * from produto;

select * from categoria;

select * from estoque;

select * from pedido;

select * from itens_pedido;

select * from pagamento;

-- filtros (where)
-- QUAIS PRODUTOS CUSTAM MAIS DE 1K?
select nome,descricao
from produto where preco>1000;

-- QUAIS PEDIDOS AINDA ESTAO PENDENTES?
select id_pedido,status_pedido
from pedido where status_pedido='PENDENTE';

-- QUAIS PAGAMENTOS JA FORAM CONCLUIDOS?
select id_pagamento,status_pagamento
from pagamento where status_pagamento='PAGO';

-- QUAIS CLIENTES MORAM EM RECIFE?
select id_cliente,nome,endereco
from cliente where endereco='Recife-PE';

-- QUAIS PRODUTOS PERTECENCEM A CATEGORIA INFORMATICA?
select id_produto,nome,id_categoria
from produto where id_categoria=2; 

-- QUAIS PRODUTOS POSSUEM MENOS DE 20 UNIDADES EM ESTOQUE?
select id_produto,quantidade_disponivel
from estoque where quantidade_disponivel<20;

-- QUAIS PEDIDOS TIVERAM PAGAMENTO CANCELADO?
select id_pagamento,status_pagamento
from pagamento where status_pagamento='CANCELADO';

-- ordenacao (order by)
--  1)produtos do mais caro para o mais barato
select nome,preco
from produto
order by preco desc;

--  2)produtos do mais barato para o mais caro
select nome,preco
from produto
order by preco asc;

--  3)clientes em ordem alfabetica
select nome,id_cliente
from cliente
order by nome;

--  4)pedidos mais recentes
select id_pedido,data_pedido
from pedido
order by data_pedido desc;
--  5)menor estoque primeiro
select quantidade_disponivel,id_produto
from estoque
order by quantidade_disponivel;
--  6)top 5 produtos mais caros
select nome,preco
from produto
order by preco desc
limit 5;
T

-- funcoes de agregacao
-- count,sum,avg,min,max
-- consultas que resumem informacoes
-- tranformando varios registros em uma informacao unica de analise
-- 8 CONSULTAS SERAO FEITAS

-- 1) QUANTIDADES TOTAL DE CLIENTES CADASTRADOS
select count(*)from cliente;
-- se for algo especifico o nome da coluna entra dentro do parenteses do count

-- 2) QUANTIDADES TOTAL DE PRODUTOS CADASTRADOS
select count(*)from produto;


-- 3) VALOR TOTAL DE  PRODUTOS  DISPONIVEIS EM ESTOQUE
select sum(quantidade_disponivel)from estoque;


-- 4) MEDIA DE PREÇOS DOS PRODUTOS
select avg(preco)
from produto;
-- 5) PRODUTO MAIS CARO DO CATALOGO
select max(preco)
from produto;
-- 6) PRODUTO MAIS BARATO DO CATALOGO
select min(preco)
from produto;
-- 7) QUANTIDADE TOTAL DE PRODUTOS REALIZADOS
select count(*)
-- seria botar o nome do produto para receber a quantidade?
from produto; 
-- 8) VALOR TOTAL RECEBIDO EM PAGAMENTOS CONCLUIDOS
select sum(valor)-- MAIS OU MENOS CERTO⚠️
from pagamento where status_pagamento= 'PAGO';


-- agrupamentos(group by)
-- group by,having

-- > group by, divide os dados em grupos e permite fazer agregacoes dentro de cada gurpo,having ele filtra esses grupos ja formados


-- 1) QUANTIDADE DE  PRODUTOS  QUE SE TEM POR CATEGORIAS
select id_categoria,count(id_produto)
from produto
group by id_categoria;

-- 2) QUANTIDADE DE PEDIDOS POR STATUS
select status_pedido,count(*)
from pedido
group by status_pedido;

-- 3) QUANTIDADE DE PAGAMENTOS POR STATUS
select status_pagamento,count(*)
from pagamento
group by status_pagamento;

-- 4) VALOR TOTAL DOS PAGAMENTOS POR STATUS
select status_pagamento,sum(valor)
from pagamento
group by status_pagamento;

-- 5) PREÇO MEDIO DOS PRODUTOS POR CATEGORIA
select id_categoria,avg(preco)
from produto
group by id_categoria;
-- 6) MAIOR PREÇO POR CATEGORIA
select id_categoria,max(preco)
from produto
group by id_categoria;

-- 7) CATEGORIAS COM MAIS DE 3 PRODUTOS
SELECT id_categoria, COUNT(*)
FROM produto
GROUP BY id_categoria
HAVING COUNT(*) > 3;


-- relacionamentos (join)
-- combinando dados de duas ou mais tabelas atraves de uma relacao entre elas
-- as informacoes que a pergunta quer estao em mais de uma tabela?

-- 8 CONSULTAS DE RELACIONAMENTO COM O JOIN

-- 1) PRODUTOS + CATEGORIAS
-- QUAIS PRODUTOS PERTENCEM A CADA CATEGORIA?
select produto.id_produto,
       produto.nome,
       categoria.id_categoria,
       categoria.nome_categoria
from produto
inner join categoria
      on produto.id_categoria=categoria.id_categoria;

-- 2) PEDIDOS + CLIENTES 
-- QUAIS CLIENTES REALIZARAM QUAIS PEDIDOS?
select pedido.id_pedido,
       cliente.id_cliente,
       cliente.nome
from pedido
inner join cliente
      on pedido.id_cliente=cliente.id_cliente;


-- 3)PEDIDOS + PAGAMENTOS 
-- QUAIS PEDIDOS POSSUEM QUAIS PAGAMENTOS E SEUS RESPECTIVOS STATUS?

select pagamento.id_pedido,
       pedido.status_pedido,
       pagamento.status_pagamento
from pedido
inner join pagamento 
      on pagamento.id_pedido=pedido.id_pedido;

-- 4) PROODUTOS + ESTOQUE
-- QUAL PRODUTO POSSUI DETERMINADA QUANTIDADE DISPONIVEL EM ESTOQUE?
select produto.id_produto,
       estoque.id_estoque,
       estoque.quantidade_disponivel
from produto
inner join estoque
      on produto.id_produto=estoque.id_produto;

-- 5) PRODUTOS + CATEGORIAS + PREÇOS
-- QUAIS SAO  OS PRODUTOS DE CADA CATEGORIA E SEUS RESPECTIVOS PREÇOS?
select produto.id_produto,
       categoria.id_categoria,
       produto.preco
from produto
inner join categoria 
      on produto.id_categoria=categoria.id_categoria;
      
-- 6) PEDIDOS + CLIENTES + PAGAMENTOS
-- QUAIS CLIENTES FIZERAM PEDIDOS E QUALÉ O STATUS DO PAGAMENTO DESSES PEDIDOS?
select  pedido.id_cliente,
        pedido.id_pedido,
        pagamento.status_pagamento,
from pedido 
inner join cliente
      on pedido.id_cliente=cliente.id_cliente
inner join pagamento 
      on pedido.id_pedido=pagamento.id_pedido;

-- 7)  PEDIDOS + ITENS + PRODUTOS
-- QUAIS PRODUTOS FORAM INCLUIDOS EM CADA PEDIDO?
select pedido.id_pedido,
       produto.id_produto,
       produto.nome
from pedido
inner join item_pedido
      on pedido.id_pedido=item_pedido.id_pedido
inner join produto
      on item_pedido.id_produto=produto.id_produto;

-- 8) PEDIDO COMPLETO
-- QUAIS PRODUTOS FORAM COMPRADOS POR CADA CLIENTE, EM QUAL PEDIDO, COM QUAL QUANTIDADE E QUAL FOI O PAGAMENTO?

SELECT cliente.id_cliente,
       pedido.id_pedido,
       produto.id_produto,
       produto.nome,
       item_pedido.quantidade,
       pagamento.status_pagamento
FROM pedido

INNER JOIN cliente
    ON pedido.id_cliente = cliente.id_cliente

INNER JOIN item_pedido
    ON pedido.id_pedido = item_pedido.id_pedido

INNER JOIN produto
    ON item_pedido.id_produto = produto.id_produto

INNER JOIN pagamento
    ON pedido.id_pedido = pagamento.id_pedido;

      
-- consultas gerencias
-- consultas que  um gestor realmente iria pedir
-- qual cliente faz mais pedido?
-- qual categoria possui mais produtos?
-- qual produto apareceu em mais pedidos?
-- qual o faturamento total?
-- quanto cada cliente gastou?
-- quais pedidos  ainda estao pendentes?
-- quais pagamentos estao cancelados?
-- quantos produtos existem por categorias?
-- quais clientes nunca realizaram pedidow
-- ver como interpretar as tabelas que possuem relacao direta adequada para responder aperguntar e ir para o join e inner join


