select title, duration 
  from tracks_list 
 where duration = (select max(duration) 
					 from tracks_list);

select title 
  from tracks_list 
 where duration > 210;

select title 
  from collections_list 
 where release_year between 2018 and 2020;

select title 
  from artists_list 
 where title not like '% %';

select title 
  from tracks_list 
 where title like any (array['%Мой %', '%мой %', '% мой %', '% мой%', '%My %', '%my %', '% my %', '% my%']);

select gl.title, count(ga.artist_id) 
  from genres_list as gl
	   join genres_artists as ga 
	   on gl.id = ga.genre_id
 group by gl.title;

select al.title, count(tl.album_id) 
  from albums_list as al
	   join tracks_list as tl 
	   on tl.album_id = al.id
 where al.release_year in (2019, 2020)
 group by al.title;

select al.title, avg(tl.duration) 
  from albums_list as al
	   join tracks_list as tl 
	   on tl.album_id = al.id
 group by al.title;

select title 
  from artists_list
 where id not in 
 	   (select artist_id 
 	   	  from albums_artists as aa 
			   join albums_list as al 
			   on aa.album_id = al.id
		 where al.release_year = 2020);

select distinct cl.title 
  from collections_list as cl
	   join collections_tracks as ct 
	   on cl.id = ct.collection_id

	   join tracks_list as tl 
	   on ct.track_id = tl.id
			   
	   join albums_list as al 
	   on tl.album_id = al.id
			   
	   join albums_artists as aa 
	   on al.id = aa.album_id
			   
	   join artists_list as al2 
	   on aa.artist_id = al2.id
 where al2.title = 'Drake';