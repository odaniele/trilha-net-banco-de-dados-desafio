-- Etapa 1
SELECT 
	Nome,
	Ano
FROM Filmes

-- Etapa 2
SELECT
	Nome,
	Ano
FROM Filmes
ORDER BY Ano ASC

-- Etapa 3
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes 
WHERE Nome = 'De Volta para o Futuro'

-- Etapa 4
SELECT *
FROM Filmes
WHERE Ano = 1997

-- Etapa 5
SELECT *
FROM Filmes
WHERE Ano > 2000

-- Etapa 6
SELECT *
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

-- Etapa 7
SELECT 
	Ano,
	COUNT (*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- Etapa 8
SELECT
	PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M'

-- Etapa 9
SELECT
	PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Etapa 10
SELECT 
	Nome,
	Genero
FROM Filmes 
INNER JOIN Generos 
ON Filmes.Id = Generos.Id

-- Etapa 11
SELECT
	Nome,
	Genero
FROM Filmes
INNER JOIN Generos 
ON Filmes.Id = Generos.Id
WHERE Genero = 'Mistério'

-- Etapa 12
SELECT 
    f.Nome AS Nome, 
    a.PrimeiroNome AS PrimeiroNome, 
    a.UltimoNome AS UltimoNome, 
    ef.Papel 
FROM 
    Filmes f 
INNER JOIN 
    ElencoFilme ef ON f.id = ef.IdFilme 
INNER JOIN 
    Atores a ON ef.IdAtor = a.id
