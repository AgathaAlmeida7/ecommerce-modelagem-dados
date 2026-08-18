-- ======================================================
--                 INSERT ESTOQUE
-- ======================================================
-- SEMPRE SEGUNDO A ORDEM DAS DEPENDENCIAS DO BANCO 
-- cada produto possui um unico controle de estoque
-- e cada registro de estoque pertence a apenas um produto 
-- se temos 15 produto e cada produto tem que esta vinculado a so 1 estoque, entao vai ser 15 estoque tambem
INSERT INTO estoque(quantidade_disponivel,id_produto)
VALUES             (25,1),
                   (8, 2),
                   (40,3),
                   (12,4),
                   (60,5),
                   (35,6),
                   (18,7),
                   (20,8),
                   (22,9),
                   (15,10),
                   (14,11),
                   (9,12),
                   (30,13),
                   (5,14),
                   (45,15);



