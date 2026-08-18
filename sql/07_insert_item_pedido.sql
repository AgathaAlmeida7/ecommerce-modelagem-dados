-- =================================================
--               INSERT ITEM_PEDIDO
-- =================================================
-- o pedido nao é um produto,o pedido é apenas a representacao da compra. quem informa quais produtos fazem parte dessa compra é justamente a tabela item_pedido
-- representa cada item comprado dentro de um pedido
-- criada pq relacionamento n:n em bd relacional n existe,entao tem que ter essa entidade associativa

-- QUAIS PRODUTOS CADA CLIENTE COMPROU EM CADA PEDIDO?
INSERT INTO item_pedido(id_pedido,     id_produto,      quantidade,     preco_unitario)
VALUES                 (1,                  1,              1,              2499.90),
                       (1,                  5,              1,               129.90),
                       (2,                  4,              1,              4599.90),
                       (2,                  6,              1,               289.90),
                       (3,                  7,              2,                39.90),
                       (3,                  9,              1,                59.90),
                       (4,                  2,              1,              3199.90),
                       (4,                  3,              2,               249.90),
                       (5,                  10,             1,               189.90),
                       (6,                  11,             1,               249.90),
                       (6,                  12,             1,               399.90),
                       (7,                  13,             2,                99.90),
                       (8,                  14,             1,              1899.90),
                       (8,                  15,             3,                39.90),
                       (9,                  8,              1,                29.90),
                       (10,                 1,              1,              2499.90),
                       (10,                 3,              1,               249.90),
                       (11,                 6,              1,               289.90),
                       (12,                 5,              2,               129.90),
                       (12,                 10,             1,               189.90);
-- se o banco consultasse sempre o preço da tabela produto,os pedidos antigos mudariam de valor,o que seria incorreto
-- por isso gravamos o preço no momento da compra
-- campo que registra o historico da transacao 
-- pratica usada em sistemas reais
-- objetivo é relacionar os 12 pedidos aos 15 produtos, demosntrando na pratica como um relacionamento N;N
