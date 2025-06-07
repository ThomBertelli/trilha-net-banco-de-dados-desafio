-- Buscar o nome e ano dos filmes
-- SELECT nome, ano
-- FROM filmes

-- Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
-- SELECT nome, ano
-- FROM filmes
-- ORDER BY ano ASC;

-- Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
-- SELECT nome, ano, duracao
-- FROM filmes
-- WHERE nome = 'De Volta para o Futuro';

-- Buscar os filmes lançados em 1997
-- SELECT nome, ano
-- FROM filmes
-- WHERE ano = 1997;

-- Buscar os filmes lançados APÓS o ano 2000
-- SELECT nome, ano
-- FROM filmes
-- WHERE ano > 2000;

--Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
-- SELECT nome, ano, duracao
-- FROM filmes
-- WHERE duracao > 100 AND duracao < 150
-- ORDER BY duracao ASC;

--Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
-- SELECT ano, COUNT(*) AS quantidade_filmes
-- FROM filmes
-- GROUP BY ano
-- ORDER BY quantidade_filmes DESC;

--Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
-- SELECT PrimeiroNome, UltimoNome
-- FROM Atores
-- WHERE Genero = 'M';

--Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
-- SELECT PrimeiroNome, UltimoNome
-- FROM Atores
-- WHERE Genero = 'F'
-- ORDER BY PrimeiroNome;

--Buscar o nome do filme e o gênero
-- SELECT nome, genero
-- FROM Filmes
-- JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
-- JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;

--Buscar o nome do filme e o gênero do tipo "Mistério"
-- SELECT Filmes.nome, Generos.genero
-- FROM Filmes
-- JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
-- JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
-- WHERE Generos.genero = 'Mistério';

--Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
-- SELECT Filmes.nome AS NomeFilme, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
-- FROM Filmes
-- JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
-- JOIN Atores ON ElencoFilme.IdAtor = Atores.Id;