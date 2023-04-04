create table if not exists Genre (
	id serial primary key,
	"name" varchar(64) unique not null
	);

create table if not exists Musician (
	id serial primary key,
	"name" varchar(64) unique not null
	);

create table if not exists Albums (
	id serial primary key,
	"name" varchar(64) not null,
	"date released" date check("date released">'1900-01-01') not null
	);
create table if not exists Songs (
	id serial primary key,
	"name" varchar(64) not null,
	"time" time check("time">'00:00:30') not null,
	"fk_albums_id" integer references Albums(id) not null
	);

create table if not exists Compilation (
	id serial primary key,
	"name" varchar(64) not null,
	"year of issue" date check("year of issue">'2000-01-01') not null
	);

create table if not exists Musician_genres (
	"genre_id" integer references Genre(id),
	"musician_id" integer references Musician(id),
	constraint musician_genre_pk primary key (genre_id, musician_id)
	);

create table if not exists Musician_albums (
	"musician_id" integer references Musician(id),
	"albums_id" integer references Albums(id),
	constraint musician_albums_pk primary key (musician_id, albums_id)
	);

create table if not exists Songs_compilation (
	"songs_id" integer references Songs(id),
	"compilation_id" integer references Compilation(id),
	constraint songs_compilation_pk primary key (songs_id, compilation_id)
	);

