insert into genre ("name")
values('Hip-Hop'),
	('Jazz'),
	('Blues'),
	('Rock-n-Roll'),
	('Pop');

insert into musician ("name")
values('Eazy E'),
	('Schoolboy Q'),
	('B.B. King'),
	('Bing Crosby'),
	('Freddie King'),
	('Buddy Guy'),
	('The Castaways'),
	('Chuck Berry'),
	('Rihanna'),
	('Sia'),
    ('ASAP Rocky');

insert into musician_genres  (musician_id, genre_id)
values(1,1),
	  (2,1),
	  (3,2),
	  (4,2),
	  (5,3),
	  (6,3),
	  (7,4),
	  (8,4),
	  (9,5),
	  (10,5),	 
      (9,1),
	  (5,2),
      (11,1);

insert into albums ("name", "year")
values('Eazy Duz It', '1998-11-23'),
	  ('Crash Talk', '2019-04-26'),
	  ('Live at the Regal', '1965-11-21'),
	  ('Seasons', '1977-10-14'),
	  ('Texas Cannonball', '1972-02-02'),
	  ('Sweet Tea', '2001-05-15'),
	  ('Liar Liar', '1965-09-11'),
	  ('Chuck Berry', '1975-07-17'),
	  ('Anti', '2016-01-28'),
	  ('This is Acting', '2016-01-29'),
      ('AT.LONG.LAST.A$AP', '2015-05-26');
	 
insert into musician_albums (musician_id, albums_id)
values(1,19),
	  (2,20),
	  (3,21),
	  (4,22),
	  (5,23),
	  (6,24),
	  (7,25),
	  (8,26),
	  (9,27),
	  (10,28),
	  (11,29);
	 
insert into songs ("name", "time", fk_albums_id)
values('Radio', 304, 19),
	  ('Boyz-N-The-Hood', 391, 19),
	  ('Numb Numb Juice', 107, 20),
	  ('Crash', 161, 20),
	  ('Everyday I Have the Blues', 158, 21),
	  ('How Blue Can You Get?', 158, 21),
	  ('April Showers', 147, 22),
	  ('Summer Wind', 230, 22),
	  ('Big Legged Woman', 241, 23),
	  ('Me and My Guitar', 246, 23),
	  ('Done Got Old', 203, 24),
	  ('Stay All Night', 250, 24),
	  ('Liar Liar', 110, 25),
	  ('In Love with Love', 99, 25),
	  ('Swanee River', 179, 26),
	  ('A Deuce', 156, 26),
	  ('Desperado', 150, 27),
	  ('Consideration', 160, 27),
	  ('Bird Set Free', 252, 28),
	  ('Unstoppable', 218, 28),
	  ('Electric Body', 255, 29),
	  ('Lord Pretty Flacko Jodye', 126, 29)
	  ('L$D', 288, 29),
	  ('Everyday', 200, 29);
	 
insert into compilation ("name", "year")
values('Dance Music', '2017-05-02'),
	  ('For the Lond Road', '2010-04-08'),
	  ('Jazz', '2000-04-04'),
	  ('Rock', '2001-08-01'),
	  ('Pop Hits', '2019-01-01'),
	  ('Blues', '1970-07-20'),
	  ('20 century hits', '1999-12-31'),
	  ('Jazz and Blues', '1982-02-02');
	 
insert into songs_compilation (songs_id, compilation_id)
values(4, 2),
	  (5, 2),
	  (6, 2),
	  (7, 2),
	  (8, 3),
	  (9, 3),
	  (10, 3),
	  (11, 3),
	  (12, 3),
	  (20, 3),
	  (21, 3),
	  (8, 4),
	  (9, 4),
	  (10, 4),
	  (11, 4),
	  (15, 5),
	  (16, 5),
	  (20, 6),
	  (21, 6),
	  (22, 6),
	  (23, 6),
	  (12, 7),
	  (13, 7),
	  (14, 7),
	  (15, 7),
	  (4, 8),
	  (5, 8),
	  (9, 8),
	  (12, 8),
	  (14, 8),
	  (18, 8),
	  (8, 9),
	  (9, 9),
	  (10, 9),
	  (11, 9),
	  (12, 9);




