--1.	количество исполнителей в каждом жанре;
SELECT g.name, COUNT(s.name) FROM genre g
JOIN genresinger gs ON gs.genre_id = g.id
JOIN singer s ON s.id = gs.singer_id
GROUP BY g.name
ORDER BY COUNT(s.name) DESC;


--2.	количество треков, вошедших в альбомы 2019-2020 годов;
SELECT COUNT(s.name) FROM song s
JOIN album a ON s.album_id = a.id
WHERE releaseyear BETWEEN '2019-01-01' AND '2020-12-31';

--3.	средн€€ продолжительность треков по каждому альбому;
SELECT AVG(s.duration),a.name FROM song s
JOIN album a ON s.album_id = a.id
GROUP BY a.name
ORDER BY AVG(s.duration) DESC;


--4.	все исполнители, которые не выпустили альбомы в 2020 году;
SELECT s.name FROM singer s
JOIN albumsinger aa ON aa.singer_id = s.id
JOIN album a ON aa.album_id = a.id
WHERE a.releaseyear NOT BETWEEN '2020-01-01' AND '2020-12-31';


--5.	названи€ сборников, в которых присутствует конкретный исполнитель (выберите сами);
SELECT DISTINCT c.name FROM collection c
JOIN songcollection sc ON sc.collection_id = c.id
JOIN song s ON sc.song_id = s.id
JOIN album a ON s.album_id = a.id
JOIN albumsinger aa ON aa.album_id = a.id
JOIN singer ss ON aa.singer_id = ss.id
WHERE ss.name LIKE 'Bob Ok';

--ƒќѕќЋЌ»“≈Ћ№Ќќ проверила по названию песни, обе его песни попали в один сборник
SELECT c.name,s.name FROM collection c
JOIN songcollection sc ON sc.collection_id = c.id
JOIN song s ON sc.song_id = s.id
JOIN album a ON s.album_id = a.id
JOIN albumsinger aa ON aa.album_id = a.id
JOIN singer ss ON aa.singer_id = ss.id
WHERE ss.name LIKE 'Bob Ok';


--6.	название альбомов, в которых присутствуют исполнители более 1 жанра;
SELECT a.name FROM album a
JOIN albumsinger aa ON aa.album_id = a.id
JOIN singer s ON aa.singer_id = s.id
JOIN genresinger gs ON s.id = gs.singer_id
JOIN genre g ON gs.genre_id = g.id
GROUP BY a.name
HAVING	COUNT(g.name) > 1;
--нет таких альбомов, 
--в каждом альбоме только по 1 жанру, т.к. у каждого исполнител€ только свой альбом
--а у каждого исполнител€ только по 1 жанру, проверим: 
SELECT a.name,g.name FROM album a
JOIN albumsinger aa ON aa.album_id = a.id
JOIN singer s ON aa.singer_id = s.id
JOIN genresinger gs ON s.id = gs.singer_id
JOIN genre g ON gs.genre_id = g.id;


--7 наименование треков, которые не вход€т в сборники;
SELECT s.name FROM song s
LEFT JOIN songcollection sc ON s.id = sc.song_id
WHERE sc.song_id IS NULL;

--8.	»мена исполнител€(-ей), написавшего самый короткий по продолжительности трек,м.б. неск;
SELECT s.name FROM singer s
JOIN albumsinger aa ON aa.singer_id = s.id
JOIN album a ON aa.album_id = a.id
JOIN song c ON c.album_id = a.id
WHERE duration = (SELECT MIN(duration) FROM song);

--9.	название альбомов, содержащих наименьшее количество треков.
SELECT a.name,COUNT(s.name) FROM album a
JOIN song s ON a.id = s.album_id
GROUP BY a.name
HAVING COUNT(s.name) = (SELECT MIN(f) FROM (SELECT COUNT(s.name) AS f FROM album) AS z);

