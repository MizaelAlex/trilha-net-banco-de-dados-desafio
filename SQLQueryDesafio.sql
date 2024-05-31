-- 1
SELECT 
	Nome,
	Ano
FROM Filmes

-- 2
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano

--3
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--4
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = '1997'

--5
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > '2000'

--6
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > '100' AND Duracao < '150'
ORDER BY Duracao

--7
SELECT
	Ano,
	COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8
SELECT
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M'

--9
SELECT
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT 
    F.Nome AS Nome, 
    G.Genero AS Genero
FROM 
    Filmes F
JOIN 
    FilmesGenero FG ON F.Id = FG.IdFilme
JOIN 
    Generos G ON FG.IdGenero = G.Id

--11
SELECT 
    F.Nome AS Nome, 
    G.Genero AS Genero
FROM 
    Filmes F
JOIN 
    FilmesGenero FG ON F.Id = FG.IdFilme
JOIN 
    Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério'

--12
SELECT 
    F.Nome AS Nome, 
    A.PrimeiroNome, 
    A.UltimoNome, 
    E.Papel
FROM 
    Filmes F
JOIN 
    ElencoFilme E ON F.Id = E.IdFilme
JOIN 
    Atores A ON E.IdAtor = A.Id