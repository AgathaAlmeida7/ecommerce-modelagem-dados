-- ====================================================
--               INSERT PAGAMENTO
-- ====================================================
-- bora saber se o pedido feito pelo cliente foi pago ou nao
-- nao representa a compra, mas siminformacoes financeiras relacionadas a um pedido,e cada pagamento possui a unico pedido
-- cada pedido possui um pagamento 1;1
-- por ter unique, o banco impede que existam dois pagamentos para o mesmo pedido

INSERT INTO pagamento(data_pagamento, valor,  forma_pagamento,   status_pagamento,     id_pedido)
VALUES               ('2026-08-01', 2629.80,   'PIX',               'PAGO',                1),
                     ('2026-08-02', 4889.80,  'CARTAO_CREDITO',     'PAGO',                2),
                     ('2026-08-03', 139.70,  'BOLETO',              'PENDENTE',            3),
                     ('2026-08-03', 3699.70, 'CARTAO_CREDITO',      'PAGO',                4),
                     ('2026-08-04', 189.90,  'PIX',                 'PENDENTE',            5),
                     ('2026-08-05', 649.80,  'PIX',                 'PAGO',                6),
                     ('2026-08-06', 199.80,  'BOLETO',              'PENDENTE',            7),
                     ('2026-08-06', 2019.60, 'CARTAO_CREDITO',      'PAGO',                8),
                     ('2026-08-07', 29.90,   'PIX',                 'CANCELADO',           9),
                     ('2026-08-08', 2749.80, 'CARTAO_CREDITO',      'PAGO',                10),
                     ('2026-08-09', 289.90,  'PIX',                 'PAGO',                11),
                     ('2026-08-10', 449.70,  'BOLETO',              'PENDENTE',            12);





















-- obs: o campo valor representa o valor total pago pelo pedido,enisso existe algo importante aqui: 'mas o valor ja nao esta na tabela item_pedido?.. sim , esta! so que la temos o preco de cada item,e aqui armazenamos o valor total da transacao;
-- uso de unico em forma de fk


