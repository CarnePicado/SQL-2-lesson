select "g"."name", count("musician_id")
from "musician_genres" "mg" 
inner join "genre" "g" on "g"."id"="mg"."genre_id"
group by "g"."name"
order by count("musician_id") desc
;

select count("s"."name")
from "songs" "s"
left outer join "albums" "a" on "s"."fk_albums_id"="a"."id"
where "a"."date released" between '2019-01-01' and '2020-12-31'
;

select "a"."name", avg("s"."time")
from "songs" "s" 
left outer join "albums" "a" on "a"."id"="s"."fk_albums_id"
group by "a"."name"
order by avg("time") desc
;

select "m"."name"
from "musician" "m"
where "m"."name" not in (
select "m"."name" 
from "musician" "m"
join "musician_albums" "ma" on "m"."id"="ma"."musician_id"
join "albums" "a" on "a"."id"="ma"."albums_id"
where to_char ("a"."date released", 'YYYY')='2020'
);
	

select distinct "c"."name" 
from "compilation" "c"
left outer join "songs_compilation" "sc" on "c"."id"="sc"."compilation_id"
left outer join "songs" "s" on "s"."id"="sc"."compilation_id"
left outer join "albums" "a" on "a"."id"="s"."fk_albums_id"
left outer join "musician_albums" "ma" on "a"."id"="ma"."albums_id"
left outer join "musician" "m" on "m"."id"="ma"."musician_id"
where "m"."name" like 'Chuck Berry'
;

select distinct "a"."name"
from "albums" "a"
join "musician_albums" "ma" on "a"."id"="ma"."albums_id"
join "musician" "m" on "m"."id"="ma"."musician_id"
join "musician_genres" "mg" on "m"."id"="mg"."musician_id"
group by "a"."name", "mg"."musician_id"
having count("mg"."musician_id") > 1
;

select "s"."name" 
from "songs" "s"
left outer join "songs_compilation" "sc" on "s"."id"="sc"."songs_id"
left outer join "compilation" "c" on "c"."id"="sc"."compilation_id"
where "c"."name" is null
;

select "m"."name"
from "musician" "m"
left outer join "musician_albums" "ma" on "ma"."musician_id"="m"."id"
left outer join "albums" "a" on "a"."id"="ma"."albums_id"
left outer join "songs" "s" on "s"."fk_albums_id"="a"."id"
where "time"=(
select min("time") 
from "songs"
);

select "a"."name"
from "albums" "a"
inner join "songs" "s" on "a"."id"="s"."fk_albums_id"
group by "a"."name"
having count("s"."name")=(
select count("s"."name") as "c"
from "albums" "a"
inner join "songs" "s" on "a"."id"="s"."fk_albums_id"
group by "a"."name"
order by "c"
limit 1
);


