insert into collections_list (title, release_year) 
values ('Need for Speed: Underground 2', 2015),
	   ('Top Hits of 2018', 2020),
	   ('Drake - Collection', 2017),
	   ('00''s Rock', 2020);

insert into albums_list (title, release_year) 
values ('Riders On The Storm (Fredwreck Remix)', 2007),
	   ('Lean Back', 2004),
	   ('Scorpion', 2018),
	   ('Dark Lane Demo Tapes', 2020),
	   ('lovely (with Khalid)', 2018),
	   ('A Beautiful Lie', 2005),
	   ('Боже, храни кьют-рок', 2020),
	   ('Младшая сестра', 2019);

insert into tracks_list (title, album_id, duration) 
values ('Riders On The Storm - Fredwreck Remix', 1, 382),
	   ('Lean Back - Edit', 2, 253),
	   ('In My Feelings', 3, 218),
	   ('Toosie Slide', 4, 247),
	   ('lovely (with Khalid)', 5, 200),
	   ('A Beautiful Lie', 6, 245),
	   ('Капли', 7, 198),
	   ('Младшая сестра', 8, 222),
	   ('Attack', 6, 188),
	   ('God''s Plan', 3, 198);

insert into artists_list (title) 
values ('Snoop Dogg'),
	   ('The Doors'),
	   ('Terror Squad'),
	   ('Fat Joe'),
	   ('Remy Ma'),
	   ('Drake'),
	   ('Billie Eilish'),
	   ('Khalid'),
	   ('Thirty Seconds To Mars'),
	   ('Дора');

insert into genres_list (title) 
values ('Hip Hop'),
	   ('Rap'),
	   ('Classic rock'),
	   ('RnB'),
	   ('Pop'),
	   ('Alternative rock'),
	   ('Rock'),
	   ('Cute rock');

insert into collections_tracks (collection_id, track_id) 
values (1, 1),
	   (1, 2),
	   (2, 3),
	   (3, 3),
	   (3, 4),
	   (2, 5),
	   (4, 6);

insert into albums_artists (album_id, artist_id) 
values (1, 1),
	   (1, 2),
	   (2, 3),
	   (2, 4),
	   (2, 5),
	   (3, 6),
	   (4, 6),
	   (5, 7),
	   (5, 8),
	   (6, 9),
	   (7, 10),
	   (8, 10);

insert into genres_artists (genre_id, artist_id) 
values (1, 1),
	   (2, 1),
	   (3, 2),
	   (1, 3),
	   (1, 4),
	   (2, 4),
	   (1, 5),
	   (1, 6),
	   (2, 6),
	   (4, 6),
	   (5, 7),
	   (4, 8),
	   (5, 8),
	   (6, 9),
	   (7, 9),
	   (5, 10),
	   (8, 10);
