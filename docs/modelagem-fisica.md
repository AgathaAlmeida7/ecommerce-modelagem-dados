# Modelagem Física - Sistema de E-commerce

# 1. Objetivo

A modelagem física representa a etapa de implementação do banco de dados.

Nesta fase, o modelo lógico é convertido para comandos SQL reais, permitindo que o Sistema Gerenciador de Banco de Dados (SGBD) crie todas as tabelas, relacionamentos e restrições necessárias para o funcionamento do sistema.

Além da criação da estrutura do banco, esta etapa contempla a inserção de dados de teste e a realização de consultas SQL para validação do modelo.

---

# 2. Sistema Gerenciador de Banco de Dados (SGBD)

Para este projeto foi utilizado o **SQLite**.

O SQLite foi escolhido por ser um banco de dados leve, gratuito, amplamente utilizado em projetos acadêmicos e ideal para o desenvolvimento de aplicações de pequeno e médio porte.

Entre suas principais vantagens destacam-se:

* Não necessita de instalação de servidor;
* Banco armazenado em um único arquivo (.db);
* Fácil integração com diversas linguagens de programação;
* Implementação simples para fins de estudo e portfólio.

---

# 3. Implementação da Estrutura Física

A implementação física foi baseada integralmente na modelagem lógica desenvolvida na etapa anterior.

Foram criadas as seguintes tabelas:

* CLIENTE
* CATEGORIA
* PRODUTO
* PEDIDO
* ITEM_PEDIDO
* PAGAMENTO
* ESTOQUE

Cada tabela foi implementada utilizando tipos de dados apropriados, além das restrições necessárias para garantir a integridade das informações.

---

# 4. Tipos de Dados Utilizados

Durante a implementação foram utilizados os principais tipos de dados suportados pelo SQLite, como:

* INTEGER
* TEXT
* REAL

Cada atributo recebeu um tipo de dado compatível com a informação que representa.

---

# 5. Constraints Utilizadas

Para garantir a integridade do banco de dados foram utilizadas as seguintes constraints:

* PRIMARY KEY
* FOREIGN KEY
* NOT NULL
* UNIQUE
* DEFAULT
* CHECK (quando necessário)

Essas restrições garantem a consistência dos dados armazenados e impedem operações que possam comprometer a integridade do banco.

---

# 6. Relacionamentos Implementados

Os relacionamentos definidos na modelagem lógica foram implementados por meio de chaves estrangeiras (Foreign Keys).

Os principais relacionamentos implementados foram:

* CLIENTE → PEDIDO
* PEDIDO → ITEM_PEDIDO
* PRODUTO → ITEM_PEDIDO
* CATEGORIA → PRODUTO
* PEDIDO → PAGAMENTO
* PRODUTO → ESTOQUE

Dessa forma, o banco mantém a integridade referencial entre todas as tabelas.

---

# 7. Organização dos Scripts SQL

Para facilitar a manutenção e organização do projeto, a implementação foi dividida em três scripts principais:

**01_create_tables.sql**

Responsável pela criação de todas as tabelas, chaves primárias, chaves estrangeiras e demais restrições do banco.

**02_insert_dados.sql**

Responsável pela inserção de dados fictícios para testes do sistema.

**03_consultas.sql**

Contém consultas SQL utilizadas para validar a estrutura do banco e realizar consultas sobre os dados armazenados.

---

# 8. Banco de Dados Gerado

Após a execução dos scripts SQL foi gerado o banco de dados:

`database/ecommerce.db`

Esse arquivo contém toda a estrutura física implementada durante o desenvolvimento do projeto.

---

# 9. Próxima Etapa

Após a implementação da modelagem física, foram realizados:

* criação das tabelas;
* inserção dos dados;
* consultas SQL;
* validação da estrutura do banco de dados.

Essas atividades permitem verificar o correto funcionamento do sistema e garantir que o banco atenda aos requisitos definidos durante o levantamento e a modelagem dos dados.
