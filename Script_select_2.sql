select "g"."name", count("musician_id")
from musician_genres mg 
inner join "genre" "g" on "g"."id"="mg"."genre_id"
group by "g"."name"
order by count("musician_id") desc;

select count("songs"."name") 
from "songs" 
inner join "albums" on "songs"."id"="albums"."id"
where "albums"."year" between '2019-01-01' and '2020-01-01'
group by "albums"."year";

select "a"."name", avg("s"."time")
from "songs" "s" 
left outer join "albums" "a" on "a"."id"="s"."fk_albums_id"
group by "a"."name"
order by avg("time") desc;

select "m"."name" 
from "musician" "m" 
left outer join "musician_albums" "ma" on "ma"."musician_id"="m"."id"
left outer join "albums" "a" on "ma"."albums_id"="a"."id"
order by "m"."name";

select distinct "c"."name" 
from "compilation" "c"
left outer join "songs_compilation" "sc" on "c"."id"="sc"."compilation_id"
left outer join "songs" "s" on "s"."id"="sc"."compilation_id"
left outer join "albums" "a" on "a"."id"="s"."fk_albums_id"
left outer join "musician_albums" "ma" on "a"."id"="ma"."albums_id"
left outer join "musician" "m" on "m"."id"="ma"."musician_id"
where "m"."name" like 'Eazy E';

select "a"."name" 
from "albums" "a"
right outer join "musician_albums" "ma" on "a"."id"="ma"."albums_id"
right outer join "musician" "m" on "m"."id"="ma"."musician_id"
right outer join "musician_genres" "mg" on "m"."id"="mg"."musician_id"
right outer join "genre" "g" on "g"."id"="mg"."genre_id"
group by "a"."name"
having count("mg"."genre_id") > 1;

select "s"."name" 
from "songs" "s"
left outer join "songs_compilation" "sc" on "s"."id"="sc"."songs_id"
left outer join "compilation" "c" on "c"."id"="sc"."compilation_id"
where "c"."name" is null;

select "m"."name"
from "musician" "m"
left outer join "musician_albums" "ma" on "ma"."musician_id"="m"."id"
left outer join "albums" "a" on "a"."id"="ma"."albums_id"
left outer join "songs" "s" on "s"."fk_albums_id"="a"."id"
where "time"=(select min("time") from "songs")
group by "m"."name";

select "a"."name", count("s"."name") as "count"
from "albums" "a"
left outer join "songs" "s" on "a"."id"="s"."fk_albums_id"
where "s"."name"=(select min("s"."name") from "songs" "s")
group by "a"."name";

select "a"."name"
from "albums" "a"
left outer join "songs" "s" on "a"."id"="s"."fk_albums_id"
group by "a"."name"
having count("s"."name")=2
order by count("s"."name");


