-- Solution 1
select 
	Nome, Ano from Filmes

-- Solution 2
select 
	Nome, Ano, Duracao from Filmes

-- Solution 3
select 
	Nome, Ano, Duracao from Filmes
	where Nome = 'De Volta para o Futuro'

-- Solution 4
select 
	Nome, Ano, Duracao from Filmes
	where Ano = 1997

-- Solution 5
select 
	Nome, Ano, Duracao from Filmes
	where Ano >=2001 and Ano<=2009

-- Solution 6
select 
	Nome, Ano, Duracao from Filmes
	where Duracao > 100
	order by Duracao

-- Solution 7
select 
	Ano, 
	COUNT(*) Quantidade from Filmes
	group by Ano
	order by Quantidade desc

-- Solution 8
select 
	* 
	from Atores where Genero='M'
	order by Id

-- Solution 9
select 
	* 
	from Atores where Genero='F'
	order by PrimeiroNome

-- Solution 10
SELECT
    F.Nome,
    G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero

-- Solution 11
SELECT
    F.Nome,
    G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero
where G.Genero='Mistério'

-- Solution 12
SELECT
    F.Nome,
    A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
FROM Filmes F
INNER JOIN ElencoFilme EF ON F.Id = EF.IdFilme
INNER JOIN Atores A ON A.Id = EF.IdAtor


