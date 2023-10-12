-- Resolução query 1
SELECT Nome, Ano FROM Filmes

-- Resolução query 2
SELECT Nome, Ano FROM Filmes ORDER BY Ano

-- Resolução query 3
SELECT * FROM Filmes WHERE Nome = 'De Volta para o Futuro'

-- Resolução query 4
SELECT * FROM Filmes WHERE Ano = 1997

-- Resolução query 5
SELECT * FROM Filmes WHERE Ano > 2000

-- Resolução query 6
SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao 

-- Resolução query 7
SELECT Ano, COUNT(*) Quantidade FROM Filmes 
GROUP BY Ano
ORDER BY Quantidade DESC

-- Resolução query 8
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M' 

-- Resolução query 9
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- Resolução query 10
SELECT Nome, Genero FROM Filmes INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id  

-- Resoluçãp query 11
SELECT Nome, Genero FROM Filmes INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id  WHERE Genero = 'Mistério'

-- Resolução query 12
SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id
