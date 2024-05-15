create table if not exists genres_list (
	id 	  SERIAL 	  primary key,
	title varchar(80) not null
);

create table if not exists artists_list (
	id 	  SERIAL 	  primary key,
	title varchar(80) not null
);

create table if not exists genres_artists (
	primary key (genre_id, artist_id),
	genre_id  integer 
			  references genres_list(id),
	artist_id integer 
			  references artists_list(id)
);

create table if not exists albums_list (
	id 			 SERIAL 	 primary key,
	title 		 varchar(80) not null,
	release_year integer 	 not null,
				 constraint album_chk_year
				 check (release_year > 1900)
);

create table if not exists albums_artists (
	primary key (album_id, artist_id),
	album_id  integer 
			  references albums_list(id),
	artist_id integer 
			  references artists_list(id)
);

create table if not exists tracks_list (
	id 		 SERIAL 	 primary key,
	title 	 varchar(80) not null,
	album_id integer 	 not null,
	duration integer	 not null,
			 constraint track_chk_dur
			 check (duration > 50),
	foreign key (album_id) 
		references albums_list(id)
);

create table if not exists collections_list (
	id 			 SERIAL 	 primary key,
	title 		 varchar(80) not null,
	release_year integer 	 not null,
				 constraint collect_chk_year
				 check (release_year > 1900)
);

create table if not exists collections_tracks (
	primary key (collection_id, track_id),	
	collection_id integer 
				  references collections_list(id),
	track_id 	  integer 
				  references tracks_list(id)
);