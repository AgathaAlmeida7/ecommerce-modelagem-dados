--                 INSERT CLIENTE
-- =================================================
--  com isso aqui o comportamento muda, se o cliente nao existe ele insere, caso ja exista ele ignora.
INSERT OR IGNORE INTO cliente(nome,                  email,                            telefone,               endereco)
VALUES             ('Joao Silva',       'joao.silva@email.com',            '81999990001',           'Recife-PE'),
                   ('Maria Oliveira',   'maria.oliveira@email.com',        '81999990002',           'Olinda-PE'),
                   ('Carlos Souza',     'carlos.souza@email.com',           '81999990003',           'Jaboatao-PE'),
                   ('Ana Santos',       'ana.santos@email.com',             '81999990004',           'Recife-PE'),
                   ('Pedro Almeida',    'pedro.almeida@email.com',          '81999990005',           'Paulista-PE'),
                   ('Juliana Costa',    'juliana.costa@email.com',          '81999990006',           'Recife-PE'),
                   ('Lucas Ferreira',   'lucas.ferreira@email.com',          '8199990007',            'Olinda-PE'),
                   ('Fernanda Lima',    'fernanda.lima@email.com',           '81999990008',           'Recife-PE'),
                   ('Rafael Martins',   'rafael.martins@email.com',           '81999990009',           'Jaboatao-PE'),
                   ('Camila Rocha',     'camila.rocha@email.com',             '819999900010',          'Recife-PE');
-- o suficiente de clientes para testar consultas,filtros,relacionamentos,joins
-- 10 clientes serao criados