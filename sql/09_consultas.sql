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
-- where,and,or, like

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