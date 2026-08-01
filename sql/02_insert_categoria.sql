-- criacaode dados ficticios para testar as demais tabelas
-- clientes,categorias,produtos,pedidos,itens dos pedidos,pagamentos,estoque
-- a partir dessa etapa a gente vai validar se a modelagem ela realmente funciona na pratica


-- o insert into ele serve para inserir registros dentro das tabelas respeitando as regras criadas na modelagem fisica
-- existe uma ordem correta para inserir por causa das fks

-- categoria,cliente,produto,estoque,pedido,item_pedido,pagamento


-- INSERT INTO
-- qual sequencia de insercao respeita os relacionamentos que eu modelei
-- pq o bd ele possui dependencias
-- seguir a ordem de hierarquia de pks 
-- nao vai ser criado 1k de registros,pois esse projeto é de modelagem
-- o oobjetivo aqui é testar relacionamentos,joins,gerar consultas,analisar dados

-- CATEGORIA(id_categoria,nome)
-- 5 registros
-- eletronicos,informatica,livros,casa,esportes
-- ==============================================
--               INSERT CATEGORIA
-- ==============================================

INSERT INTO categoria(nome_categoria)
VALUES                ('Eletronicos'),
                      ('Informatica'),
                      ('Livros'),
                      ('Casa'),
                      ('Esportes');

-- =================================================













































-- CLIENTE(id_cliente,nome,email,telefone,endereco)
-- 8 registros, vai puder ver varios clientes,clientes com e sem pedidos

-- PRODUTO(id_produto,nome,descricao,preco,quantidade_estoque,id_categoria)15 registros distribuitos entre as categorias

-- ESTOQUE(cada produto possui um controle de estoque)
-- se temos 15 produtos temos 15 registros de estoque


-- PEDIDO(id_pedido,data_pedido,status_pedido,id_cliente)12 pedidos

-- ITEM_PEDIDO(id_item_pedido,id_pedido,id_produto,quantidade,preco_unitario)30 itens de pedido. 12 pedidos distribuidos em aproximadametne  2 a 4 produtos por pedido.

-- PAGAMENTO(id_pagamento,data_pagamento,valor,forma_pagamento,status_pagamento,id_pedido)
-- cada pedido possui um pagamento 





