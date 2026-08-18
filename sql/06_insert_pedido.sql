-- ================================================
--                 INSERT PEDIDO
-- ================================================
-- registrando operacoes de negocio,as compras que foram realizadas pelo cliente
-- foicriado um registro na tabela pedido
-- o cliente fala em compra, a gente transforma essa compra em um pedido
-- essa tabela representa o momento em que o cliente confirma uma compra
-- ela nao guarda os produtos comprados, so registra informacoes gerais da compra


-- aqui tamebm vamos ver a qual cliente esse pedido esta relacionado
INSERT INTO pedido(data_pedido,       status_pedido,            id_cliente)
VALUES            ('2026-08-01',      'FINALIZADO',                 1),
                  ('2026-08-02',      'FINALIZADO',                 2),
                  ('2026-08-03',      'PROCESSANDO',                3),
                  ('2026-08-03',      'FINALIZADO',                 4),
                  ('2026-08-04',      'PENDENTE',                   5),
                  ('2026-08-05',      'FINALIZADO',                 6),
                  ('2026-08-06',      'PROCESSANDO',                7),
                  ('2026-08-06',      'FINALIZADO',                 8),
                  ('2026-08-07',      'PENDENTE',                   9),
                  ('2026-08-08',      'FINALIZADO',                 10),
                  ('2026-08-09',      'PROCESSANDO',                1),
                  ('2026-08-10',      'PENDENTE',                   4);
-- alguns clientes comprarao apenas uma vez,alguns comprarao duas vezes, isso cria um cenario mais realista

