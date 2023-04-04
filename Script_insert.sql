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

insert into albums ("name", "date released")
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
	 
insert into musician_albums (albums_id, musician_id)
values(1,1),
	  (2,2),
	  (3,3),
	  (4,4),
	  (5,5),
	  (6,6),
	  (7,7),
	  (8,8),
	  (9,9),
	  (10,10),
	  (11,11);
	 
insert into songs ("name", "time", fk_albums_id)
values('Radio', '00:05:03', 1),
	  ('Boyz-N-The-Hood', '00:06:31', 1),
	  ('Numb Numb Juice', '00:01:47', 2),
	  ('Crash', '00:02:41', 2),
	  ('Everyday I Have the Blues', '00:02:38', 3),
	  ('How Blue Can You Get?', '00:02:38', 3),
	  ('April Showers', '00:02:27', 4),
	  ('Summer Wind', '00:03:40', 4),
	  ('Big Legged Woman', '00:04:01', 5),
	  ('Me and My Guitar', '00:04:06', 5),
	  ('Done Got Old', '00:03:23', 6),
	  ('Stay All Night', '00:04:10', 6),
	  ('Liar Liar', '00:01:50', 7),
	  ('In Love with Love', '00:01:39', 7),
	  ('Swanee River', '00:02:59', 8),
	  ('A Deuce', '00:02:16', 8),
	  ('Desperado', '00:02:30', 9),
	  ('Consideration', '00:02:40', 9),
	  ('Bird Set Free', '00:04:12', 10),
	  ('Unstoppable', '00:03:38', 10),
	  ('Electric Body', '00:04:14', 11),
	  ('Lord Pretty Flacko Jodye', '00:02:06', 11),
	  ('L$D', '00:03:57', 11),
	  ('Everyday', '00:04:20', 11);
	 
insert into compilation ("name", "year of issue")
values('Dance Music', '2017-05-02'),
	  ('For the Lond Road', '2010-04-08'),
	  ('Jazz', '2000-04-04'),
	  ('Rock', '2001-08-01'),
	  ('Pop Hits', '2019-01-01'),
	  ('Blues', '2000-07-20'),
	  ('20 century hits', '2005-12-31'),
	  ('Jazz and Blues', '2003-02-02');
	 
insert into songs_compilation (songs_id, compilation_id)
values(1, 1),
	  (2, 1),
	  (3, 1),
	  (4, 1),
	  (5, 2),
	  (6, 2),
	  (7, 2),
	  (8, 2),
	  (9, 2),
	  (20, 2),
	  (21, 2),
	  (8, 3),
	  (9, 3),
	  (10, 3),
	  (11, 3),
	  (15, 4),
	  (16, 4),
	  (20, 4),
	  (21, 5),
	  (22, 5),
	  (23, 5),
	  (12, 5),
	  (13, 5),
	  (14, 5),
	  (15, 5),
	  (4, 6),
	  (5, 6),
	  (9, 6),
	  (12, 6),
	  (14, 6),
	  (18, 6),
	  (8, 7),
	  (9, 7),
	  (10, 7),
	  (11, 7),
	  (12, 7);




