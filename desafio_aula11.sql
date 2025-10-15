-- Use o comando para selecionar a base de dados
USE locadora_db;
-- E responda as questões a seguir
-- Agora, escreva uma consulta SELECT para responder a cada uma das seguintes perguntas:
-- Clássicos do Século XX: Quais filmes do catálogo foram lançados antes do ano 2000?

SELECT *
FROM filmes
WHERE ano_lancamento < 2000;

-- Aclamados pela Crítica: Quais filmes têm uma nota de avaliação maior ou igual a 8.8?

SELECT *
FROM filmes
WHERE avaliacao >= 8.8;

-- Ficção Científica Moderna: Quais filmes são do gênero 'Ficção Científica' E foram lançados a partir de 2010?

SELECT *
FROM filmes
WHERE genero = 'Ficção Científica';

-- Sessão da Tarde: Quais filmes são do gênero 'Drama' OU do gênero 'Animação'?

SELECT *
FROM filmes
WHERE genero = 'Drama' or genero = 'Animação';

-- Excluindo um Título: Liste todos os filmes, exceto o filme com o título 'Matrix'.

SELECT *
FROM filmes
WHERE NOT titulo = 'Matrix';


-- Entrega no GitHub
-- Salve todas as suas 5 consultas SELECT em um único arquivo chamado desafio_aula11.sql.
-- Faça o commit e push do arquivo para seu repositório no GitHub com a mensagem "Desafio da Aula 11 concluído".



