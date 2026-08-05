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
-- order by,asc,desc,limit

-- funcoes de agregacao
-- count,sum,avg,min,max

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