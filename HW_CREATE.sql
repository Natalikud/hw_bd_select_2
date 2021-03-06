CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);
 
CREATE TABLE IF NOT EXISTS Singer (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);



CREATE TABLE IF NOT EXISTS GenreSinger (
	genre_id INTEGER REFERENCES Genre(id),
	singer_id INTEGER REFERENCES Singer(id),
	CONSTRAINT pk PRIMARY KEY (genre_id,singer_id)
);


CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
    releaseyear DATE
);

CREATE TABLE IF NOT EXISTS AlbumSinger (
	singer_id INTEGER REFERENCES Singer(id),
	album_id INTEGER REFERENCES Album(id),
	CONSTRAINT pke PRIMARY KEY (singer_id,album_id)
);

CREATE TABLE IF NOT EXISTS Song (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
    duration INTEGER,
	album_id INTEGER FOREIGN KEY REFERENCES Album(id)
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
    releaseyear DATE
);

CREATE TABLE IF NOT EXISTS SongCollection (
	song_id INTEGER REFERENCES Song(id),
	collection_id INTEGER REFERENCES Collection(id),
	CONSTRAINT pkey PRIMARY KEY (song_id,collection_id)
);