-- cliente(id_cliente,nome,email,telefone,endereco)
-- nome da coluna
-- colunas
-- tipo de dado
-- constraints
-- fechar create table

create table cliente(id_cliente INTEGER PRIMARY KEY,
nome TEXT not null,
email TEXT unique not null,
telefone TEXT,
endereco TEXT not null);
-- nao se precisa botar autoincremety em id cliente pq o sqlite ja bota de forma automatica, e por ser de forma automatica nao precisa de not null
-- email nao pode se repetir pq tambem é usado para identificar o cliente, entao vai ser uma constraint unique e not null, ate pq ele tem que realmente botar o email

create table pedido(id_pedido INTEGER PRIMARY KEY,
data_pedido TEXT NOT NULL,
status_pedido TEXT NOT NULL,
-- como pedido pode esta em diferentes estados,vamos colocar em TEXT
id_cliente INTEGER NOT NULL,
FOREIGN KEY (id_cliente)
    REFERENCES cliente(id_cliente));
-- nessa tabela ja começa a apareceer relacionamentos de chaves estrangeiras
-- SEMPRE SERA A TABELA DE LADO N QUE VAI RECEBER A FK
-- pq o pedido precisa saber quem é o seu dono
-- A COLUNA ID_CLIENTE DA TABELA PEDIDO DEVE OBRIGATORIAMENTE EXISTIR NA TABELA CLIENTE

create table categoria(id_categoria INTEGER PRIMARY KEY,
nome_categoria TEXT NOT NULL UNIQUE);

create table produto(id_produto INTEGER PRIMARY KEY,
nome TEXT NOT NULL,
descricao TEXT,
preco  REAL NOT NULL,
id_categoria  INTEGER NOT NULL,
FOREIGN KEY(id_categoria)
    REFERENCES categoria(id_categoria) );
-- o codigo da categoria informada no produto obrigatoriamente deve existir na tabela categoria
-- toda vez que existir uma cardinalidade 1:N , a chave estrangeira sera criada na tabela que representa o lado N do relacionamento

-- o estoque pode crescer muito em funcionalidade,separando-o em  uma tabela propria , o banco fica mais organizado e preparado para evolucoes.

create table estoque(id_estoque INTEGER PRIMARY KEY,
quantidade_disponivel INTEGER NOT NULL,
id_produto INTEGER NOT NULL UNIQUE,
FOREIGN KEY (id_produto)
    REFERENCES produto(id_produto));
-- o estoque so existe pq existe produto
-- assim cada produto podera aparecer apenas uma vez na tabela estoque

--  A TABELA ITEM PEDIDO , É LITERALMENTE DIZER QUE : CADA PRODUTO É PERTENCENTE A UM DETERMINADO PEDIDO

CREATE TABLE item_pedido(

id_item_pedido INTEGER PRIMARY KEY,

id_pedido INTEGER NOT NULL,

id_produto INTEGER NOT NULL,

quantidade INTEGER NOT NULL,

preco_unitario REAL NOT NULL,


FOREIGN KEY(id_pedido)
REFERENCES pedido(id_pedido),

FOREIGN KEY(id_produto)
REFERENCES produto(id_produto)

);

create table pagamento(id_pagamento INTEGER PRIMARY KEY,
data_pagamento TEXT NOT NULL, 
valor REAL NOT NULL,
forma_pagamento TEXT NOT NULL,
-- PIX,CARTAO,BOLETO
status_pagamento TEXT NOT NULL,
-- PAGO,PENDENTE,CANCELADO
id_pedido INTEGER NOT NULL UNIQUE,
-- um pedido nao pode ter dois pagamentos
FOREIGN KEY (id_pedido)
    REFERENCES pedido (id_pedido));