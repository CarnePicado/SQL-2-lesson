select  "name", "year" from albums
where "year" between '2018-01-01' and '2018-12-31';

select "time" from songs 
where "time"=(select max("time") from songs);

select "name" from songs
where "time" > 210;

select "name" from compilation
where "year" between '2019-01-01' and '2020-12-31'

select "name" from musician
where "name" not like '% %';

select "name" from songs
where "name" ilike '%my%';

select "name" from songs
where "name" ilike '%мой%';