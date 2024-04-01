-- ex1
select nome, ano from filmes;
-- ex2
select nome, ano, duracao from filmes order by ano;
-- ex3
select nome, ano, duracao from filmes where nome = lower('de volta para o futuro');
-- ex4
select nome, ano, duracao from filmes where ano = 1997;
-- ex5
select nome, ano, duracao from filmes where ano > 2000;
-- ex6
select nome, ano, duracao from filmes where duracao between 100 and 150;
-- ex7
select ano, count(*) quantidade from filmes order by duracao desc;
-- ex8
select Id, PrimeiroNome, UltimoNome,Genero from Atores where genero = 'M';
-- ex9
select Id, PrimeiroNome, UltimoNome,Genero 
from Atores 
where genero = 'F' 
order by PrimeiroNome;
-- ex10
select nome, genero
from filmes
left join FilmesGenero
on Filmes.id = FilmesGenero.IdFilme
left join Generos
on FilmesGenero.IdGenero = Generos.id;
-- ex11
select nome, genero
from filmes
left join FilmesGenero
on Filmes.id = FilmesGenero.IdFilme
left join Generos
on FilmesGenero.IdGenero = Generos.id
where genero = 'Mistério';
-- ex12
select Nome, PrimeiroNome, UltimoNome, Papel
from filmes 
left join elencofilme
on filmes.id = elencofilme.idfilme
left join atores
on atores.id = ElencoFilme.IdAtor;