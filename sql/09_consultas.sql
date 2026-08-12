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




-- relacionamentos (join)
-- começo da uniao das tabelas
-- enxergando o bd como um todo


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