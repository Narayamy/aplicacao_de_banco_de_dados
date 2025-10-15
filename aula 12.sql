CREATE TABLE FORNECEDORES (
 	ID_FORNECEDOR INT AUTO_INCREMENT PRIMARY KEY,
    ENDEREÇO VARCHAR(100),
    RESPONSAVEL VARCHAR(50),
    NOME_FANTASIA VARCHAR(100)
 );
 
 CREATE TABLE VENDEDORES (
 	ID_VENDEDOR INT AUTO_INCREMENT PRIMARY KEY,
    ENDERECO_DO_ESTABELECIMENTO VARCHAR(100),
    PRIORIDADE_DO_VENDEDOR INT,
    QTD_FUNCIONARIOS INT
 );
 
 
CREATE TABLE PRODUTOS (
 	ID INT AUTO_INCREMENT PRIMARY KEY,
    CODIGO_PRODUTO INT,
    DESCRICAO_PRODUTO VARCHAR(100),
    ID_FORNECEDOR INT,
    ID_VENDEDOR INT,
    FOREIGN KEY (ID_FORNECEDOR) REFERENCES FORNECEDORES(ID_FORNECEDOR),
    FOREIGN KEY (ID_VENDEDOR) REFERENCES VENDEDORES(ID_VENDEDOR)
 );

INSERT INTO  PRODUTOS
VALUES
(NULL, 1235599, 'PÃO FRANCES', 5, 6),
(NULL, 5515689, 'BOLINHO DE CHUVA', 3, 8),
(NULL, 9553222, 'COXINHA', 2, 4),
(NULL, 6986263, 'EMPADA', 3, 5);

INSERT INTO FORNECEDORES
VALUES
(NULL, 'Rua das Palmeiras, 120 - São Paulo/SP', 'Marcos Oliveira', 'Livros & Cia'),
(NULL, 'Av. Central, 450 - Rio de Janeiro/RJ', 'Fernanda Costa', 'Editora Solaris'),
(NULL, 'Rua das Acácias, 77 - Belo Horizonte/MG', 'Rafael Mendes', 'Mundo Literário'),
(NULL, 'Av. Paulista, 999 - São Paulo/SP', 'Juliana Torres', 'Distribuidora Cultura Viva'),
(NULL, 'Rua do Comércio, 321 - Curitiba/PR', 'Paulo Henrique', 'Estação do Saber');

INSERT INTO VENDEDORES
VALUES
(NULL, 'Rua das Flores, 120 - São Paulo/SP', 1, 8),
(NULL, 'Av. Central, 45 - Rio de Janeiro/RJ', 2, 5),
(NULL, 'Rua do Trigo, 300 - Belo Horizonte/MG', 3, 10),
(NULL, 'Av. Paulista, 850 - São Paulo/SP', 1, 12),
(NULL, 'Rua das Acácias, 99 - Curitiba/PR', 4, 6),
(NULL, 'Rua do Pão, 150 - Porto Alegre/RS', 2, 7),
(NULL, 'Av. Independência, 220 - Salvador/BA', 5, 9),
(NULL, 'Rua XV de Novembro, 75 - Florianópolis/SC', 3, 4),
(NULL, 'Av. Brasil, 410 - Recife/PE', 2, 11),
(NULL, 'Rua da Alegria, 200 - Fortaleza/CE', 1, 8);

UPDATE PRODUTOS
SET ID_VENDEDOR = 3
WHERE CODIGO_PRODUTO = 5515689;

SELECT * FROM PRODUTOS;

GRANT SELECT ON VENDAS TO 'ana.analista'@'%';

GRANT INSERT ON VENDAS TO 'bruno.estagiario'@'%';

GRANT SELECT, INSERT, ALTER, DELETE ON VENDAS TO 'carla.gerente'@'%';

