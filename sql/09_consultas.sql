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
-- BUSCANDO INFORMACOES PARA RESPONDER PERGUNTAS DE NEGOCIOS

-- 1) QUAIS CLIENTES POSSUEM MAIOR QUANTIDADE DE PEDIDOS?
SELECT cliente.id_cliente,
       cliente.nome,
       COUNT(pedido.id_pedido) AS quantidade_pedidos
FROM cliente
INNER JOIN pedido
    ON cliente.id_cliente = pedido.id_cliente
GROUP BY cliente.id_cliente, cliente.nome
ORDER BY quantidade_pedidos DESC;

-- 2) IDENTIFICAR QUAIS PRODUTOS POSSUEM MAIOR QUANTIDADE VENDIDA?
SELECT produto.id_produto,
       produto.nome,
       SUM(item_pedido.quantidade) AS quantidade_vendida
FROM produto
INNER JOIN item_pedido
    ON produto.id_produto = item_pedido.id_produto
GROUP BY produto.id_produto, produto.nome
ORDER BY quantidade_vendida DESC;


-- 3) QUANTO DE VALOR EM VENDAS CADA PRODUTO REPRESENTA?
SELECT produto.id_produto,
       produto.nome,
       SUM(produto.preco * item_pedido.quantidade) AS valor_vendas
FROM produto
INNER JOIN item_pedido
    ON produto.id_produto = item_pedido.id_produto
GROUP BY produto.id_produto, produto.nome
ORDER BY valor_vendas DESC;

-- 4) QUAL CATEGORIA GERA MAIOR VALOR EM VENDAS?
SELECT categoria.id_categoria,
       categoria.nome_categoria,
       SUM(produto.preco * item_pedido.quantidade) AS valor_vendas
FROM categoria

INNER JOIN produto
    ON categoria.id_categoria = produto.id_categoria

INNER JOIN item_pedido
    ON produto.id_produto = item_pedido.id_produto

GROUP BY categoria.id_categoria, categoria.nome_categoria
ORDER BY valor_vendas DESC;
-- 5) QUANTO DINHEIRO ESTA ASSOCIADO A CADA SITUACAO DE PAGAMENTOS?
SELECT status_pagamento,
       SUM(valor) AS valor_total
FROM pagamento
GROUP BY status_pagamento
ORDER BY valor_total DESC;
-- 6) IDENTIFICAR PRODUTOS QUE PRECISAM DE ATENCAO NO ESTOQUE
SELECT produto.id_produto,
       produto.nome,
       estoque.quantidade_disponivel
FROM produto
INNER JOIN estoque
    ON produto.id_produto = estoque.id_produto
WHERE estoque.quantidade_disponivel < 20
ORDER BY estoque.quantidade_disponivel ASC;
-- 7) IDENTIFICAR OS CLIENTES QUE REPRESENTAM MAIOR VOLUME DE COMPRAS
SELECT cliente.id_cliente,
       cliente.nome,
       SUM(produto.preco * item_pedido.quantidade) AS valor_total_compras
FROM cliente
INNER JOIN pedido
    ON cliente.id_cliente = pedido.id_cliente
INNER JOIN item_pedido
    ON pedido.id_pedido = item_pedido.id_pedido
INNER JOIN produto
    ON item_pedido.id_produto = produto.id_produto
GROUP BY cliente.id_cliente, cliente.nome
ORDER BY valor_total_compras DESC;
-- 8) RESUMO  GERAL DO E-COMMERCE, OBTER INDICADORES GERAIS(TOTAL DE: CLIENTES,PRODUTOS,PEDIDOS,VALOR TOTAL RECEBIDO)
SELECT
    (SELECT COUNT(*) FROM cliente) AS total_clientes,
    (SELECT COUNT(*) FROM produto) AS total_produtos,
    (SELECT COUNT(*) FROM pedido) AS total_pedidos,
    (SELECT SUM(valor)
     FROM pagamento
     WHERE status_pagamento = 'PAGO') AS valor_total_recebido;
