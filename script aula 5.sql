CREATE DATABASE ABD_03361_A_SARAH_NARAYAMY;

USE ABD_03361_A_SARAH_NARAYAMY;

 CREATE TABLE FAMILIA (
 	ID INT AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(100) NOT NULL,
    PARENTESCO VARCHAR(50) NOT NULL,
    IDADE INT,
    CIDADE VARCHAR(50)
 );

INSERT INTO FAMILIA (NOME, PARENTESCO, IDADE, CIDADE) VALUES ('CARLOS', 'PAI', 64, 'BELO HORIZONTE');
INSERT INTO FAMILIA (NOME, PARENTESCO, IDADE, CIDADE) VALUES ('CRISTINA', 'MAE', 62, 'BELO HORIZONTE');
INSERT INTO FAMILIA (NOME, PARENTESCO, IDADE, CIDADE) VALUES ('KRISHNA', 'IRMAO', 40, 'STOCKHOLM');
INSERT INTO FAMILIA (NOME, PARENTESCO, IDADE, CIDADE) VALUES ('LAURA', 'SOBRINHA', 15, 'STOCKHOLM');
INSERT INTO FAMILIA (NOME, PARENTESCO, IDADE, CIDADE) VALUES ('EMILIA', 'SOBRINHA', 11, 'STOCKHOLM');
 
INSERT INTO FAMILIA (NOME, PARENTESCO, IDADE, CIDADE) VALUES
 ('Ana', 'Mãe', 42, 'Belo Horizonte'),
 ('Bruno', 'Pai', 45, 'Belo Horizonte'),
 ('Carla', 'Filha', 18, 'Belo Horizonte'),
 ('Daniel', 'Filho', 15, 'Belo Horizonte'),
 ('Eduarda', 'Tia', 38, 'São Paulo'),
 ('Felipe', 'Tio', 40, 'São Paulo'),
 ('Gabriela', 'Prima', 25, 'São Paulo'),
 ('Henrique', 'Primo', 27, 'São Paulo'),
 ('Isabela', 'Avó', 70, 'Curitiba'),
 ('João', 'Avô', 72, 'Curitiba'),
 ('Karen', 'Cunhada', 35, 'Curitiba'),
 ('Lucas', 'Cunhado', 36, 'Curitiba'),
 ('Mariana', 'Mãe', 39, 'Rio de Janeiro'),
 ('Natália', 'Filha', 12, 'Rio de Janeiro'),
 ('Otávio', 'Filho', 10, 'Rio de Janeiro'),
 ('Paula', 'Avó', 68, 'Rio de Janeiro'),
 ('Ricardo', 'Avô', 70, 'Rio de Janeiro'),
 ('Sofia', 'Prima', 22, 'Salvador'),
 ('Tiago', 'Primo', 24, 'Salvador'),
 ('Vitor', 'Tio', 44, 'Salvador'),
 ('Yasmin', 'Sobrinha', 19, 'Salvador'),
 ('Caio', 'Sobrinho', 21, 'Fortaleza'),
 ('Rafaela', 'Irmã', 28, 'Fortaleza'),
 ('Hugo', 'Irmão', 30, 'Fortaleza'),
 ('Letícia', 'Tia', 50, 'Fortaleza'),
 ('Renato', 'Tio', 52, 'Fortaleza'),
 ('Beatriz', 'Filha', 16, 'Brasília'),
 ('André', 'Pai', 46, 'Brasília'),
 ('Fernanda', 'Mãe', 43, 'Brasília'),
 ('Guilherme', 'Filho', 14, 'Brasília'),
 ('Amanda', 'Cunhada', 33, 'Florianópolis'),
 ('Rodrigo', 'Cunhado', 34, 'Florianópolis'),
 ('Tatiane', 'Prima', 26, 'Florianópolis'),
 ('Eduardo', 'Primo', 28, 'Florianópolis'),
 ('Patrícia', 'Avó', 69, 'Recife'),
 ('Carlos', 'Avô', 71, 'Recife'),
 ('Lívia', 'Tia', 41, 'Recife'),
 ('Rogério', 'Tio', 43, 'Recife'),
 ('Simone', 'Irmã', 32, 'Manaus'),
 ('Diego', 'Irmão', 35, 'Manaus'),
 ('Juliana', 'Prima', 23, 'Manaus'),
 ('Renan', 'Primo', 25, 'Manaus'),
 ('Marta', 'Avó', 73, 'Curitiba'),
 ('Pedro', 'Avô', 75, 'Curitiba'),
 ('Elaine', 'Tia', 47, 'São Paulo'),
 ('Fábio', 'Tio', 49, 'São Paulo'),
 ('Camila', 'Prima', 20, 'Rio de Janeiro'),
 ('Matheus', 'Primo', 19, 'Rio de Janeiro'),
 ('Cláudia', 'Mãe', 37, 'Belo Horizonte'),
 ('Sérgio', 'Pai', 39, 'Belo Horizonte');


-- ESCREVA UM SCRIPT QUE RETORNE SOMENTE AS PESSOAS MAIORES DE 35 ANOS

 SELECT * FROM FAMILIA WHERE IDADE > 35;

-- ESCREVA UM SCRIPT QUE RETORNE SOMENTE AS PESSOAS SÃO MAIOR OU IGUAL A 22 ANOS

 SELECT * FROM FAMILIA WHERE IDADE >= 22;

-- ESCREVA UM SCRIPT QUE RETORNE SOMENTE A CIDADE DE SÃO PAULO

 SELECT * FROM FAMILIA WHERE CIDADE LIKE 'SÃO PAULO';

-- ESCREVA UM SCRIPT QUE RETORNE AS PESSOAS QUE TEM IDADE ENTRE 18 E 20 ANOS

 SELECT * FROM FAMILIA WHERE IDADE BETWEEN 18 AND 20;
 
-- ESCREVA UM SCRIPT QUE RETORNE SOMENTE O NOME DAS PESSOAS COM IDADE MAIOR OU IGUAL A 22 ANOS

SELECT NOME FROM FAMILIA WHERE IDADE >=22;

-- SOMENTE O NOME E IDADE MENORES QUE 18 ANOS ORDENADOS ASCENDENTEMENTE 

SELECT NOME, IDADE FROM FAMILIA WHERE IDADE <18 ORDER BY IDADE ASC;

-- PESSOAS QUE MORAM EM SÃO PAULO OU RIO DE JANEIRO

SELECT * FROM FAMILIA WHERE CIDADE IN ('SÃO PAULO', 'RIO DE JANEIRO') ORDER BY CIDADE;

-- NOME E IDADE DE PESSOAS QUE O NOME SEJA MAIOR QUE 15 CARACTERES E QUE A CIDADE SEJA SÃO PAULO EM ORDEM ASC

SELECT NOME, IDADE FROM FAMILIA WHERE LENGTH(NOME) > 5 AND CIDADE ='SÃO PAULO' ORDER BY IDADE ASC;


