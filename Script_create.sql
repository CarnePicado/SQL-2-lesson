create table if not exists Genre (
	id serial primary key,
	name varchar(64) unique not null
	);
	
create table if not exists Musician (
	id serial primary key,
	name varchar(64) unique not null,
	genre varchar(64) not null
	);

create table if not exists Albums (
	id serial primary key,
	name varchar(64) not null,
	date date not null,
	musician varchar(64) not null
	);
create table if not exists Songs (
	id serial primary key,
	name varchar(64) not null,
	time varchar(64) not null,
	album varchar(64) not null,
	fk_albums_id integer references Albums(id) not null
);

create table if not exists Compilation (
	id serial primary key,
	name varchar(64) not null,
	year date not null,
	fk_songs_id integer references Songs(id) not null
);

create table if not exists Musician_Genres (
	genre_id integer references Genre(id),
	musician_id integer references Musician(id),
	constraint musician_genres_pk primary key (genre_id, musician_id)
	);

create table if not exists Musician_albums (
	musician_id integer references Musician(id),
	albums_id integer references Albums(id),
	constraint musician_albums_pk primary key (musician_id, albums_id)
	);
	