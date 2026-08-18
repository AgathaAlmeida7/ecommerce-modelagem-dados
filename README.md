 # 🛒 E-commerce — Modelagem de Dados e Consultas SQL

Projeto desenvolvido com o objetivo de praticar e consolidar conhecimentos de **modelagem de bancos de dados relacionais** e **SQL**, utilizando como cenário um sistema simplificado de e-commerce.

O projeto acompanha a evolução do banco desde a definição das entidades e relacionamentos até a implementação física e realização de consultas SQL para análise dos dados.

---

## 📌 1. Sobre o projeto

Este projeto representa a estrutura de dados de um **sistema de comércio eletrônico**, contendo informações relacionadas a:

* Clientes
* Produtos
* Categorias
* Pedidos
* Itens dos pedidos
* Pagamentos
* Estoque

A construção foi realizada de forma incremental, passando pelas etapas de:

```text
Modelagem Conceitual
        ↓
Modelagem Lógica
        ↓
Modelagem Física
        ↓
Criação e população do banco
        ↓
Consultas SQL
        ↓
Consultas gerenciais
```

O projeto tem caráter educacional e foi desenvolvido para consolidar fundamentos de **Banco de Dados Relacionais e SQL**.

---

# 🎯 2. Objetivo

O principal objetivo é desenvolver uma base sólida em **modelagem de dados e SQL**, compreendendo não apenas a escrita das consultas, mas também a organização e o relacionamento das informações dentro de um banco de dados relacional.

Durante o desenvolvimento foram praticados conceitos como:

* Modelagem de dados;
* Entidades e atributos;
* Chaves primárias;
* Chaves estrangeiras;
* Relacionamentos entre tabelas;
* Integridade e organização dos dados;
* Criação de tabelas;
* Inserção de dados;
* Consultas SQL;
* Filtragem de registros;
* Ordenação;
* Funções de agregação;
* Agrupamentos;
* Relacionamentos entre tabelas;
* Consultas gerenciais.

O projeto também busca demonstrar a evolução gradual do conhecimento em SQL, começando por consultas simples e chegando a consultas envolvendo múltiplas tabelas e análises dos dados.

---

# 🛠️ 3. Tecnologias utilizadas

## Banco de dados

* **SQLite**

O SQLite foi utilizado por ser um banco de dados relacional leve, baseado em arquivo e adequado para o objetivo educacional deste projeto.

## Linguagem

* **SQL**

## Ferramentas

* SQLite
* Terminal / CLI
* Git
* GitHub

## Versionamento

O projeto utiliza **Git** para controle de versão e **GitHub** para armazenamento remoto e gerenciamento das branches.

---

# 📁 4. Estrutura de pastas

A estrutura do projeto foi organizada separando banco de dados, documentação e scripts SQL.

```text
ecommerce-modelagem-dados/
│
├── assets/
│   └── ...
│
├── database/
│   └── ecommerce.db
│
├── docs/
│   └── ...
│
├── sql/
│   ├── 01_...
│   ├── 02_...
│   ├── ...
│   └── 09_consultas.sql
│
├── README.md
│
└── ...
```

### `database/`

Contém o banco de dados SQLite utilizado pelo projeto.

```text
database/
└── ecommerce.db
```

### `sql/`

Contém os scripts SQL desenvolvidos durante o projeto.

Os scripts foram organizados de acordo com a evolução das etapas do banco e das consultas.

### `docs/`

Área destinada à documentação e aos materiais relacionados à modelagem do sistema.

### `assets/`

Área destinada aos recursos visuais utilizados na documentação do projeto.

---

# 🗄️ 5. Banco de dados `ecommerce.db`

O banco utilizado pelo projeto é o:

```text
ecommerce.db
```

Ele foi desenvolvido em **SQLite** e contém as principais entidades necessárias para representar o funcionamento básico de um e-commerce.

Entre as tabelas utilizadas estão:

```text
cliente
categoria
produto
estoque
pedido
item_pedido
pagamento
```

### Principais relações

De forma simplificada:

```text
CLIENTE
   │
   └────── PEDIDO
              │
              └────── ITEM_PEDIDO
                           │
                           └────── PRODUTO
                                      │
                                      ├──── CATEGORIA
                                      │
                                      └──── ESTOQUE

PEDIDO
   │
   └────── PAGAMENTO
```

Esses relacionamentos permitem representar informações como:

* Qual cliente realizou determinado pedido;
* Quais produtos pertencem a uma categoria;
* Quais produtos foram incluídos em cada pedido;
* Quantos produtos foram vendidos;
* Qual é a quantidade disponível em estoque;
* Quais pagamentos estão associados aos pedidos.

---

# 🧩 6. Modelagem conceitual

A modelagem conceitual representa o sistema em um nível mais abstrato, identificando as principais entidades, seus atributos e os relacionamentos existentes entre elas.

As principais entidades identificadas foram:

* Cliente
* Categoria
* Produto
* Estoque
* Pedido
* Item do Pedido
* Pagamento

Nesta etapa foram definidos os elementos necessários para representar o domínio do e-commerce antes da implementação efetiva do banco.

O foco foi compreender:

```text
Quais entidades existem?
        ↓
Quais informações cada entidade possui?
        ↓
Como essas entidades se relacionam?
```

---

# 🔗 7. Modelagem lógica

Na modelagem lógica, a estrutura conceitual foi transformada em uma representação adequada para um banco de dados relacional.

Foram definidos:

* Tabelas;
* Colunas;
* Chaves primárias;
* Chaves estrangeiras;
* Relacionamentos;
* Cardinalidades.

A estrutura passou a representar as entidades através de tabelas relacionadas.

Exemplo conceitual:

```text
CLIENTE
   │
   │ 1:N
   ▼
PEDIDO
```

Um cliente pode realizar vários pedidos, enquanto cada pedido pertence a um cliente.

Outro exemplo:

```text
CATEGORIA
   │
   │ 1:N
   ▼
PRODUTO
```

Uma categoria pode possuir vários produtos.

---

# 🏗️ 8. Modelagem física

A modelagem física representa a implementação efetiva do modelo lógico no banco de dados SQLite.

Nesta etapa foram realizados:

* Criação das tabelas;
* Definição das colunas;
* Definição das chaves primárias;
* Definição das chaves estrangeiras;
* Inserção dos dados iniciais;
* Organização do banco `ecommerce.db`.

A partir dessa etapa o modelo passou a existir como um banco de dados funcional.

---

# 🔎 9. Consultas SQL

Após a criação e população do banco, foram desenvolvidas consultas SQL progressivamente mais elaboradas.

## 9.1 Consultas básicas

Foram realizadas consultas para visualizar e recuperar informações das tabelas.

---

## 9.2 Filtros — `WHERE`

Foram utilizadas condições para selecionar registros específicos.

Exemplos de necessidades trabalhadas:

* Pedidos pendentes;
* Pagamentos pagos;
* Clientes de determinada cidade;
* Produtos de determinada categoria;
* Produtos com estoque abaixo de determinado limite;
* Pagamentos cancelados.

Sintaxe utilizada:

```sql
SELECT coluna
FROM tabela
WHERE condição;
```

---

## 9.3 Ordenação — `ORDER BY`

Foram realizadas consultas para ordenar informações.

Foram praticados:

* `ORDER BY`
* `ASC`
* `DESC`
* `LIMIT`

Exemplos:

* Produtos do mais caro para o mais barato;
* Produtos do mais barato para o mais caro;
* Clientes em ordem alfabética;
* Pedidos mais recentes;
* Menores estoques primeiro;
* Top 5 produtos mais caros.

---

## 9.4 Funções de agregação

Foram praticadas as principais funções de agregação:

```text
COUNT()
SUM()
AVG()
MIN()
MAX()
```

Essas funções permitiram obter informações resumidas sobre os dados.

Exemplos:

* Total de clientes;
* Total de produtos;
* Média de preços;
* Produto mais caro;
* Produto mais barato;
* Valores financeiros acumulados.

---

## 9.5 Agrupamentos — `GROUP BY` e `HAVING`

Foram realizadas consultas para analisar os dados por grupos.

Exemplos:

* Quantidade de produtos por categoria;
* Quantidade de pedidos por status;
* Quantidade de pagamentos por status;
* Valor total dos pagamentos por status;
* Preço médio dos produtos por categoria;
* Maior preço por categoria;
* Categorias com mais de determinada quantidade de produtos.

Conceitos praticados:

```sql
GROUP BY
HAVING
```

---

## 9.6 Relacionamentos — `INNER JOIN`

Foram realizadas consultas envolvendo múltiplas tabelas.

Exemplos:

* Produtos e categorias;
* Pedidos e clientes;
* Pedidos e pagamentos;
* Produtos e estoque;
* Produtos, categorias e preços;
* Pedidos, clientes e pagamentos;
* Pedidos, itens e produtos;
* Consulta completa envolvendo cliente, pedido, item, produto e pagamento.

Exemplo de relacionamento:

```sql
SELECT ...
FROM tabela_a
INNER JOIN tabela_b
    ON tabela_a.chave = tabela_b.chave;
```

O objetivo foi praticar a recuperação de informações distribuídas entre diferentes tabelas relacionadas.

---

# 📊 9.7 Consultas gerenciais

Como etapa final das consultas, foram desenvolvidas consultas voltadas à obtenção de informações úteis para análise do negócio.

Entre elas:

1. Clientes com maior quantidade de pedidos;
2. Produtos com maior quantidade vendida;
3. Valor de vendas representado por cada produto;
4. Categorias que geram maior valor em vendas;
5. Valor financeiro associado a cada situação de pagamento;
6. Produtos que precisam de atenção no estoque;
7. Clientes que representam maior volume de compras;
8. Resumo geral do e-commerce com indicadores.

Essas consultas combinam conceitos desenvolvidos ao longo do projeto, como:

```text
JOIN
+
WHERE
+
SUM / COUNT
+
GROUP BY
+
ORDER BY
```

---

# 🌿 10. Estratégia de branches

O projeto foi desenvolvido utilizando branches para separar as etapas de evolução do banco.

Entre as principais etapas trabalhadas estão:

```text
modelagem conceitual
        ↓
modelagem lógica
        ↓
modelagem física
```

A branch de **modelagem física** concentrou a implementação do banco e a evolução das consultas SQL.

Durante essa etapa foram realizados commits progressivos para registrar a evolução das consultas:

```text
Criação e população inicial do banco
        ↓
Consultas básicas
        ↓
WHERE
        ↓
ORDER BY
        ↓
Funções de agregação
        ↓
GROUP BY / HAVING
        ↓
INNER JOIN
        ↓
Consultas gerenciais
```

Após a conclusão, a branch de modelagem física foi integrada à `main` através de Pull Request.

---

# ▶️ 11. Como executar o projeto

## 1. Clonar o repositório

```bash
git clone <URL_DO_REPOSITORIO>
```

Depois:

```bash
cd ecommerce-modelagem-dados
```

## 2. Verificar o banco

O banco SQLite está localizado em:

```text
database/ecommerce.db
```

## 3. Abrir o banco utilizando SQLite

No terminal:

```bash
sqlite3 database/ecommerce.db
```

Após entrar no SQLite, é possível verificar as tabelas com:

```sql
.tables
```

---

# 🔍 12. Como consultar o banco

Depois de abrir o banco:

```bash
sqlite3 database/ecommerce.db
```

É possível executar os scripts SQL presentes na pasta:

```text
sql/
```

Por exemplo:

```sql
SELECT *
FROM produto;
```

Também é possível executar um arquivo SQL diretamente pelo SQLite:

```bash
sqlite3 database/ecommerce.db < sql/09_consultas.sql
```

Para sair do SQLite:

```sql
.quit
```

---

# 📈 13. Evolução do projeto

O projeto foi construído de maneira incremental, acompanhando a evolução dos conhecimentos de banco de dados e SQL.

A trajetória pode ser representada da seguinte forma:

```text
                 BANCO DE DADOS
                       │
                       ▼
              MODELAGEM CONCEITUAL
                       │
                       ▼
                MODELAGEM LÓGICA
                       │
                       ▼
                MODELAGEM FÍSICA
                       │
                       ▼
             CRIAÇÃO DO BANCO SQLITE
                       │
                       ▼
              INSERÇÃO DOS DADOS
                       │
                       ▼
                CONSULTAS BÁSICAS
                       │
                       ▼
                     WHERE
                       │
                       ▼
                   ORDER BY
                       │
                       ▼
             AGREGAÇÕES
                       │
                       ▼
              GROUP BY / HAVING
                       │
                       ▼
                    JOIN
                       │
                       ▼
             CONSULTAS GERENCIAIS
                       │
                       ▼
                ANÁLISE DOS DADOS
```

O projeto representa, portanto, uma evolução desde a **estruturação do banco de dados** até a utilização do SQL para **consulta, organização, relacionamento e análise das informações**.

---

# 📚 Conceitos praticados

Ao longo do desenvolvimento foram trabalhados os seguintes conceitos:

* Banco de dados relacional;
* Modelagem conceitual;
* Modelagem lógica;
* Modelagem física;
* Tabelas;
* Colunas;
* Chaves primárias;
* Chaves estrangeiras;
* Relacionamentos;
* `SELECT`;
* `FROM`;
* `WHERE`;
* `ORDER BY`;
* `ASC`;
* `DESC`;
* `LIMIT`;
* `COUNT`;
* `SUM`;
* `AVG`;
* `MIN`;
* `MAX`;
* `GROUP BY`;
* `HAVING`;
* `INNER JOIN`;
* Subconsultas;
* Consultas gerenciais;
* Git;
* GitHub;
* Branches;
* Commits;
* Pull Requests.

---

# 🚀 Próximos passos

Possíveis evoluções futuras do projeto incluem:

* Ampliação do conjunto de consultas;
* Criação de consultas gerenciais mais avançadas;
* Exploração de outros tipos de `JOIN`;
* Criação de views;
* Criação de índices;
* Análise de desempenho das consultas;
* Evolução do banco para um SGBD mais robusto, como PostgreSQL;
* Integração do banco com uma aplicação backend;
* Construção de uma camada de análise dos dados.

---

## 👩‍💻 Projeto de estudo

Este projeto foi desenvolvido como parte da construção prática de conhecimentos em **Banco de Dados, Modelagem de Dados e SQL**, utilizando um cenário de e-commerce para aplicar os conceitos de maneira progressiva e prática.
