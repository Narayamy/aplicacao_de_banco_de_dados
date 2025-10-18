-- BANCO DE EXEMPLO PARA _ABD_03361_A_NOME_RELATÓRIO_DE_VENDAS
 
-- TABELAS: CLIENTES E PEDIDOS
 
-- 1 CRIAR BASE DE DADOS CHAMADA RELATORIO_VENDAS_EMPRESA

CREATE DATABASE ABD_03361_A_SARAH_NARAYAMY_RELATORIO_DE_VENDAS;
 
-- 2 CRIAR TABELA CLIENTES
-- CAMPOS: id, nome, cidade

USE ABD_03361_A_SARAH_NARAYAMY_RELATORIO_DE_VENDAS;

 CREATE TABLE CLIENTS (
 	CLIENT_ID INT AUTO_INCREMENT PRIMARY KEY,
    CLIENT_NAME VARCHAR(100) NOT NULL,
    CITY VARCHAR(50)
 );
 
-- 3 CRIAR TABELA PEDIDOS
-- CAMPOS: id, id_cliente, produto, quantidade, valor_unitario
-- LIGAR A COLUNA id_cliente À TABELA CLIENTES
 
 CREATE TABLE ORDERS (
 	ID INT AUTO_INCREMENT PRIMARY KEY,
    CLIENT_ID INT,
    PRODUCT VARCHAR(50),
    QUANTITY INT,
    PRICE_PER_UNIT DECIMAL(10,2),
    FOREIGN KEY (CLIENT_ID) REFERENCES CLIENTS(CLIENT_ID)
 );
 
-- 4 INSERIR DADOS NAS TABELAS
-- CLIENTES: 300 REGISTROS
-- PEDIDOS: 300 REGISTROS, RELACIONANDO COM CLIENTES
 

DELIMITER //
CREATE PROCEDURE CLIENTS_POPULATE()
BEGIN
  DECLARE i INT DEFAULT 1;
  WHILE i <= 300 DO
    INSERT INTO CLIENTS (CLIENT_NAME, CITY)
    VALUES (
      CONCAT(
        ELT(FLOOR(1 + RAND() * 20),
          'Ana', 'Bruno', 'Carla', 'Diego', 'Eduarda', 'Fernando', 'Gabriela', 'Henrique', 'Isabela', 'João',
          'Karina', 'Lucas', 'Mariana', 'Nicolas', 'Patrícia', 'Rafael', 'Simone', 'Tatiane', 'Vinícius', 'Wesley'
        ),
        ' ',
        ELT(FLOOR(1 + RAND() * 20),
          'Silva', 'Oliveira', 'Souza', 'Lima', 'Costa', 'Pereira', 'Alves', 'Gomes', 'Ribeiro', 'Martins',
          'Barros', 'Azevedo', 'Melo', 'Rocha', 'Nunes', 'Castro', 'Carvalho', 'Tavares', 'Fernandes', 'Freitas'
        )
      ),
      ELT(FLOOR(1 + RAND() * 15),
        'São Paulo', 'Rio de Janeiro', 'Curitiba', 'Salvador', 'Recife',
        'Porto Alegre', 'Florianópolis', 'Brasília', 'Fortaleza', 'Belo Horizonte',
        'Belém', 'Goiânia', 'Vitória', 'Natal', 'Campinas'
      )
    );
    SET i = i + 1;
  END WHILE;
END //
DELIMITER ;

CALL CLIENTS_POPULATE();
DROP PROCEDURE CLIENTS_POPULATE;


 DELIMITER //
CREATE PROCEDURE ORDER_POPULATE()
BEGIN
  DECLARE j INT DEFAULT 1;
  WHILE j <= 300 DO
    INSERT INTO ORDERS (CLIENT_ID, PRODUCT, QUANTITY, PRICE_PER_UNIT)
    VALUES (
      FLOOR(1 + RAND() * 300), -- cliente aleatório
      ELT(FLOOR(1 + RAND() * 15),
        'Ração Premium para Cães 15kg',
        'Ração para Gatos 10kg',
        'Areia Sanitária 4kg',
        'Shampoo Neutro Pet',
        'Coleira Antipulgas',
        'Brinquedo de Borracha',
        'Tapete Higiênico 30un',
        'Caminha Pet Média',
        'Roupinha Pet',
        'Petisco Dental',
        'Osso Natural',
        'Comedouro Inox',
        'Escova de Pelos',
        'Cortador de Unhas',
        'Perfume Pet 120ml'
      ),
      FLOOR(1 + RAND() * 6), -- quantidade entre 1 e 6
      ROUND(20 + (RAND() * 250), 2) -- preço entre 20 e 270
    );
    SET j = j + 1;
  END WHILE;
END //
DELIMITER ;

CALL ORDER_POPULATE();
DROP PROCEDURE ORDER_POPULATE;

-- ======================================
-- CONSULTAS DE VERIFICAÇÃO
-- ======================================

SELECT COUNT(*) AS TOTAL_CLIENTS FROM CLIENTS;
SELECT COUNT(*) AS TOTAL_ORDERS FROM ORDERS;

SELECT * FROM CLIENTS LIMIT 10;
SELECT * FROM ORDERS LIMIT 10;

 -- 5 INNER JOIN
-- MOSTRAR APENAS CLIENTES QUE TÊM PEDIDOS
-- EXIBIR: NOME DO CLIENTE E PRODUTO

SELECT C.CLIENT_NAME AS NOME, O.PRODUCT AS PRODUTO
FROM CLIENTS C
INNER JOIN ORDERS O
    ON C.CLIENT_ID = O.CLIENT_ID
    ORDER BY NOME ASC
    LIMIT 20;
 
-- 6 LEFT JOIN
-- MOSTRAR TODOS OS CLIENTES, MESMO QUE NÃO TENHAM PEDIDOS
-- EXIBIR: NOME DO CLIENTE E PRODUTO


 
-- 7 RIGHT JOIN
-- MOSTRAR TODOS OS PEDIDOS, MESMO QUE NÃO TENHAM CLIENTE ASSOCIADO
-- EXIBIR: NOME DO CLIENTE E PRODUTO
 
-- 8 FULL JOIN
-- MOSTRAR TODOS OS CLIENTES E TODOS OS PEDIDOS, MESMO SEM CORRESPONDÊNCIA
-- DICA: NO MYSQL PODE SER FEITO COM UNION DE LEFT JOIN E RIGHT JOIN
 
-- 9 CROSS JOIN
-- COMBINAR TODOS OS CLIENTES COM TODOS OS PEDIDOS (PRODUTO CARTESIANO)
-- EXIBIR: NOME DO CLIENTE E PRODUTO