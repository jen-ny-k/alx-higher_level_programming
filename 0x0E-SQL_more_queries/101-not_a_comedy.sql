-- a script that lists all shows without the genre Comedy in the database hbtn_0d_tvshows
SELECT DISTINCT title FROM tv_shows s WHERE s.id NOT IN (SELECT show_id FROM tv_show_genres sg INNER JOIN tv_genres g ON g.id = sg.genre_id WHERE g.name = 'Comedy') ORDER BY title ASC;

