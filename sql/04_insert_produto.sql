-- ==================================================
--               INSERT PRODUTO
-- ==================================================

-- aqui é a primeira tabela que tem uma fk, que é a tabela que depende da categoria, ela possui id_categoria
-- vamos começar a inserir produtos utilizando os ids das categorias que existem
-- primeiro momento que se tera na pratica uma fk sendo utilizada durante um insert
-- 15 produtos cadastrados
INSERT INTO produto(nome,descricao,preco,id_categoria)
VALUES             ('smartphone Samsung Galaxy A56','Smartphone Samsung com 128GB de armazenamento.',2499.90,1),
                   ('Smart TV LG 50','art TV 4K UHD com sistema WebOS',2899.90,1),
                   ('Fone Bluetooth JBL Tune 520BT','Fone de ouvido Bluetooth com até 57 horas de bateria.',299.90,1),
                   ('notebook Dell Inspiron 15','Notebook Intel Core i5, 16GB RAM, SSD 512GB',4599.90,2),
                   ('Mouse Logitech G203','Mouse Gamer RGB USB',149.90,2),
                   ('Teclado Mecânico Redragon Kumara','Teclado mecânico com switches Outemu Blue.',249.90,2),
                   ('Dom Casmurro','Romance clássico de Machado de Assis',39.90,3),
                   ('A Hora da Estrela','Obra de Clarice Lispector.','34.90',3),
                   ('1984','Romance distópico de George Orwell',49.90,3),
                   ('Liquidificador Mondial Turbo','Liquidificador 1200W com 12 velocidades.',179.90,4),
                   ('Cafeteira Elétrica Arno','Cafeteira elétrica com capacidade para 15 xícaras.',199.90,4),
                   ('Aspirador de Pó Electrolux','Aspirador compacto para uso doméstico.',359.90,4),
                   ('Bola de Futebol Penalty','Bola oficial para campo.',129.90,5),
                   ('Bicicleta Aro 29 Caloi','Bicicleta para trilhas e uso urbano.',1899.90,5),
                   ('Corda de Pular Profissional','Corda ajustável para treinamento funcional.',59.90,5);
-- a fkdo lado 1 vai para o lado N
-- todo produto ele pertence a uma categoria em si
-- eletronicos,informatica,livros,casa,esportes
-- 3 categorias por produto




