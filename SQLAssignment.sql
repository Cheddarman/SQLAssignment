SQL - Movies(assignment)

select * from movies;

select movieid, title
from movies
limit 10;

select *
from movies
where movieid = 485;

select movieid
from movies
where title = 'Made in America (1993)';

select *
from movies
where movieid < 11
order by title asc;

select *
from movies
where title like '%(2002)%';

select title
from movies
where lower(title) like '%godfather%';

select *
from movies
where lower(genres) like '%comedy%';

select *
from movies
where lower(genres) like '%comedy%'
and lower(title) like '%death%';

Joins-

select m.title, r.rating
from movies m join ratings r on m.movieid = r.movieid
where m.movieid = 858;

select m.title, r.rating
from movies m join ratings r on m.movieid = r.movieid
where m.movieid = 858
order by r.timestamp asc;

select m.title, l.imdbid
from movies m join links l on m.movieid = l.movieid
where lower(title) like '%2005%'
and lower(genres) like '%comedy%';

select *
from movies m left join ratings r on m.movieid = r.movieid
where r.rating is null;
select *
from movies m
join movie_genre mg on m.movieid = mg.movieid
join genre g on mg.genre_id = g.id
where lower(g.genres) = 'fantasy';