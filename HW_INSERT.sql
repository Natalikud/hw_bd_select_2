--	не менее 8 исполнителей
INSERT INTO singer
VALUES('1','Anna Black');

INSERT INTO singer
VALUES('2','Jane Clarks');

INSERT INTO singer
VALUES('3','Elena');

INSERT INTO singer
VALUES('4','Jack');

INSERT INTO singer
VALUES('5','Robby');

INSERT INTO singer
VALUES('6','Stive');

INSERT INTO singer
VALUES('7','Andrew');

INSERT INTO singer
VALUES('8','Bob Ok');

--	не менее 5 жанров
INSERT INTO genre
VALUES('1','Pop');

INSERT INTO genre
VALUES('2','Rap');

INSERT INTO genre
VALUES('3','Jazz');

INSERT INTO genre
VALUES('4','Dance');

INSERT INTO genre
VALUES('5','Rock');

--	не менее 8 альбомов
INSERT INTO album
VALUES('1','Annas_album','2015-01-01');

INSERT INTO album
VALUES('2','Janes_album','2015-01-01');

INSERT INTO album
VALUES('3','Elenas_album','2015-01-01');

INSERT INTO album
VALUES('4','Jacks_album','2015-01-01');

INSERT INTO album
VALUES('5','Robbys_album','2015-01-01');

INSERT INTO album
VALUES('6','Stives_album','2015-01-01');

INSERT INTO album
VALUES('7','Andrews_album','2015-01-01');

INSERT INTO album
VALUES('8','Bobs_album','2015-01-01');

--не менее 15 треков
INSERT INTO song(name,duration,album_id)
VALUES('My love',190,1);

INSERT INTO song(name,duration,album_id)
VALUES('My heart',210,2);

INSERT INTO song(name,duration,album_id)
VALUES('My life',250,3);

INSERT INTO song(name,duration,album_id)
VALUES('Special',150,4);

INSERT INTO song(name,duration,album_id)
VALUES('Crazy',240,5);

INSERT INTO song(name,duration,album_id)
VALUES('Wonderfull',240,6);

INSERT INTO song(name,duration,album_id)
VALUES('Black night',300,7);

INSERT INTO song(name,duration,album_id)
VALUES('Dont stop',300,8);

INSERT INTO song(name,duration,album_id)
VALUES('Non stop',250,1);

INSERT INTO song(name,duration,album_id)
VALUES('Alive',200,2);

INSERT INTO song(name,duration,album_id)
VALUES('Lovely dancer',130,3);

INSERT INTO song(name,duration,album_id)
VALUES('Sadness',120,4);

INSERT INTO song(name,duration,album_id)
VALUES('Go on',170,5);

INSERT INTO song(name,duration,album_id)
VALUES('Whats up',180,6);

INSERT INTO song(name,duration,album_id)
VALUES('Never give up',180,7);

INSERT INTO song(name,duration,album_id)
VALUES('The end',200,8);

--не менее 8 сборников
INSERT INTO collection(name,releaseyear)
VALUES('One','2014-01-01');

INSERT INTO collection(name,releaseyear)
VALUES('Two','2015-01-01');

INSERT INTO collection(name,releaseyear)
VALUES('Three','2016-01-01');

INSERT INTO collection(name,releaseyear)
VALUES('Four','2017-01-01');

INSERT INTO collection(name,releaseyear)
VALUES('Five','2018-01-01');

INSERT INTO collection(name,releaseyear)
VALUES('Six','2019-01-01');

INSERT INTO collection(name,releaseyear)
VALUES('Seven','2020-01-01');

INSERT INTO collection(name,releaseyear)
VALUES('Eight','2021-01-01');

--исполнителей с альбомами
INSERT INTO albumsinger
VALUES(1,1);

INSERT INTO albumsinger
VALUES(2,2);
INSERT INTO albumsinger
VALUES(3,3);
INSERT INTO albumsinger
VALUES(4,4);
INSERT INTO albumsinger
VALUES(5,5);
INSERT INTO albumsinger
VALUES(6,6);
INSERT INTO albumsinger
VALUES(7,7);
INSERT INTO albumsinger
VALUES(8,8);

--исполнителей с жанрами
INSERT INTO genresinger
VALUES(1,1);
INSERT INTO genresinger
VALUES(2,2);
INSERT INTO genresinger
VALUES(3,3);
INSERT INTO genresinger
VALUES(4,4);
INSERT INTO genresinger
VALUES(5,5);
INSERT INTO genresinger
VALUES(1,6);
INSERT INTO genresinger
VALUES(2,7);
INSERT INTO genresinger
VALUES(3,8);

--сборников с треками
INSERT INTO songcollection
VALUES(1,1);
INSERT INTO songcollection
VALUES(2,2);
INSERT INTO songcollection
VALUES(3,3);
INSERT INTO songcollection
VALUES(4,4);
INSERT INTO songcollection
VALUES(5,5);
INSERT INTO songcollection
VALUES(6,6);
INSERT INTO songcollection
VALUES(7,7);
INSERT INTO songcollection
VALUES(8,8);
INSERT INTO songcollection
VALUES(9,1);
INSERT INTO songcollection
VALUES(10,2);
INSERT INTO songcollection
VALUES(11,3);
INSERT INTO songcollection
VALUES(12,4);
INSERT INTO songcollection
VALUES(13,5);
INSERT INTO songcollection
VALUES(14,6);
INSERT INTO songcollection
VALUES(15,7);
INSERT INTO songcollection
VALUES(16,8);