
# Levantamento de Requisitos

## 1. Objetivo

Este documento apresenta o levantamento de requisitos do projeto **Sistema de E-commerce**, cujo objetivo é desenvolver um banco de dados capaz de armazenar, organizar e gerenciar as principais informações de uma loja virtual.

O sistema será responsável por controlar clientes, produtos, categorias, pedidos, pagamentos e estoque, proporcionando uma estrutura organizada para o gerenciamento das operações do negócio.

---

# 2. Contexto do Projeto

A empresa **TechStore** é uma loja virtual especializada na comercialização de produtos eletrônicos, como notebooks, teclados, monitores, mouses, webcams e outros acessórios.

Atualmente, o controle das informações é realizado por meio de planilhas eletrônicas, dificultando o gerenciamento dos dados e a obtenção de informações estratégicas.

Diante desse cenário, foi identificada a necessidade de desenvolver um banco de dados relacional capaz de centralizar todas as informações da empresa, garantindo maior organização, consistência e facilidade na realização de consultas.

---

# 3. Requisitos Funcionais

O sistema deverá permitir:

* RF01 – Cadastrar clientes.
* RF02 – Cadastrar produtos.
* RF03 – Cadastrar categorias de produtos.
* RF04 – Controlar o estoque dos produtos.
* RF05 – Registrar pedidos realizados pelos clientes.
* RF06 – Registrar os pagamentos dos pedidos.
* RF07 – Consultar clientes cadastrados.
* RF08 – Consultar produtos cadastrados.
* RF09 – Consultar pedidos realizados.
* RF10 – Consultar pagamentos registrados.
* RF11 – Atualizar automaticamente o estoque após a realização de uma venda.
* RF12 – Gerar informações para análise das vendas.

---

# 4. Regras de Negócio

O sistema deverá obedecer às seguintes regras:

* RN01 – Todo cliente poderá realizar vários pedidos.
* RN02 – Cada pedido pertence a um único cliente.
* RN03 – Um pedido poderá conter um ou mais produtos.
* RN04 – Um produto poderá estar presente em vários pedidos.
* RN05 – Todo produto deverá pertencer a uma única categoria.
* RN06 – Todo pagamento estará associado a um único pedido.
* RN07 – A situação do pagamento poderá assumir os valores **Pago**, **Pendente** ou **Cancelado**.
* RN08 – Após a confirmação de uma venda, a quantidade disponível em estoque deverá ser atualizada.
* RN09 – O sistema deverá manter a integridade das informações cadastradas.

---

# 5. Consultas Esperadas

Ao final do desenvolvimento, o sistema deverá permitir consultas como:

* Listar os produtos mais vendidos.
* Identificar os clientes que mais realizaram compras.
* Consultar pedidos pendentes de pagamento.
* Calcular o faturamento em um determinado período.
* Consultar produtos com baixo estoque.
* Listar pedidos realizados por um determinado cliente.
* Consultar os pagamentos registrados.
* Consultar produtos por categoria.

---

# 6. Escopo Inicial

Nesta primeira versão, o projeto contemplará:

* Cadastro de clientes.
* Cadastro de produtos.
* Cadastro de categorias.
* Controle de estoque.
* Registro de pedidos.
* Registro de pagamentos.
* Consultas SQL para análise das informações armazenadas.

Este documento servirá como base para as próximas etapas do projeto, incluindo a modelagem conceitual, modelagem lógica, modelagem física e implementação do banco de dados.
