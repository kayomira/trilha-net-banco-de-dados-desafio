
--1
SELECT 
Nome,
Ano
FROM Filmes

--2
SELECT 
Nome,
Ano
FROM Filmes ORDER BY Ano

--3
SELECT * FROM Filmes 
WHERE Nome= 'De Volta para o Futuro'


--4
SELECT
Nome,
Ano = 1997
FROM Filmes

--5
SELECT * FROM Filmes
WHERE Ano > 2000

--6
SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--7
SELECT 
Ano,
COUNT (*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8
SELECT * FROM Atores WHERE Genero = 'M'

--9
SELECT * FROM Atores WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT 
Nome,
Genero
FROM Filmes

INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

--11
SELECT 
Nome,
Genero = 'Mistério'
FROM Filmes
INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

--12
SELECT 
Nome,
PrimeiroNome,
UltimoNome,
Papel
FROM Filmes
INNER JOIN ElencoFilme ON IdFilme = Filmes.Id
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor
