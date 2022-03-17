-- Display drama (genre) DVDs that won awards. Sort results by year of when the DVD won an award. Show dvd title, award, genre, label, and rating.

SELECT dvd_titles.title, dvd_titles.award, genres.genre,labels.label,ratings.rating 
FROM dvd_titles
JOIN genres
    ON dvd_titles.genre_id = genres.genre_id
JOIN labels
    ON dvd_titles.label_id = labels.label_id
JOIN ratings
    ON dvd_titles.rating_id = ratings.rating_id
WHERE dvd_titles.award IS NOT NULL
ORDER BY dvd_titles.award;




-- Display DVDs made by Universal (a label) and have DTS sound. Show dvd title, sound, label, genre, and rating.
SELECT dvd_titles.title, sounds.sound,labels.label, genres.genre, ratings.rating 
FROM dvd_titles
JOIN sounds
    ON dvd_titles.sound_id = sounds.sound_id
JOIN labels
    ON dvd_titles.label_id = labels.label_id
JOIN genres
    ON dvd_titles.genre_id = genres.genre_id
JOIN ratings
    ON dvd_titles.rating_id = ratings.rating_id
WHERE sounds.sound = 'DTS'
AND labels.label = 'Universal'
ORDER BY dvd_titles.title;




-- Display R-rated Sci-Fi DVDs that have a release date (not NULL). Order results from newest to oldest released DVD. Show dvd title, release date, rating, genre, sound, and label.
SELECT dvd_titles.title, dvd_titles.release_date, ratings.rating, genres.genre, sounds.sound,labels.label
FROM dvd_titles
JOIN ratings
    ON dvd_titles.rating_id = ratings.rating_id
JOIN genres
    ON dvd_titles.genre_id = genres.genre_id
JOIN sounds
    ON dvd_titles.sound_id = sounds.sound_id
JOIN labels
    ON dvd_titles.label_id = labels.label_id
WHERE ratings.rating = 'R'
AND genres.genre = 'Sci-Fi'
AND dvd_titles.release_date IS NOT NULL
ORDER BY dvd_titles.release_date DESC;





