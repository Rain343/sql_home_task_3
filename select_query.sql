--название и год выхода альбомов, вышедших в 2018 году
SELECT release_date
FROM albums
WHERE EXTRACT(YEAR FROM release_date) = 2018;


--название и продолжительность самого длительного трека
SELECT track_name, length_time
FROM tracks
ORDER BY length_time DESC
LIMIT 1;


--название треков, продолжительность которых не менее 3,5 минуты
SELECT track_name
FROM tracks
WHERE length_time >= 210;


--названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT collection_name
FROM collection
WHERE EXTRACT(YEAR FROM release_date) BETWEEN 2018 AND 2020;


--исполнители, чье имя состоит из 1 слова
SELECT performer_name
FROM performers
WHERE (LENGTH(performer_name) - LENGTH(replace(performer_name, ' ', ''))+1) = 1;


--название треков, которые содержат слово "мой"/"my".
SELECT track_name
FROM tracks
WHERE LOWER(track_name) LIKE '%my%' OR LOWER(track_name) LIKE '%мой%';