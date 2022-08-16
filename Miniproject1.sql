#Implemented the video creation
  This table should include a unique ID, the title of the video, the length in minutes, and the URL.
CREATE TABLE Video(
	video_id Serial PRIMARY KEY,
	title VARCHAR(255),
	length VARCHAR(255), 
	URL VARCHAR(255)
);

--Populate the table with at least three related videos from YouTube or other publicly available
--resources.

--INSERT INTO videos( title, length, url)
VALUES ('How to write your best resume for Software Engineering Jobs', '12:50', 'https://www.youtube.com/watch?v=J5gy9iqjwXM'),
('7 tips for coding interview', '11:24', 'https://www.youtube.com/watch?v=xpaz7nrNmXA&t=1s'),

('How to become a data science intern','6:09 ','https://www.youtube.com/watch?v=OLlU1edxgOo');


CREATE TABLE Reviewers(
Reviewer_id Serial PRIMARY KEY,
name VARCHAR(255),
rating VARCHAR(255), 
text_review VARCHAR(255),
video_id INT REFERENCES Video(video_id)
);

--Imaginary Reviews 
--These should be imaginary reviews that include columns for the user’s name (“Asher”, “John”, etc.), the rating (which could be NULL, or a number between 0 and 5), and a short text review (“Loved it!”). There should be a column that links back to the ID column in the table of videos.

INSERT INTO reviewers(name, rating, text_review)
VALUES ('Damiano', '5', 'I like it!'),
 ('Jaden Dodoo-Tawiah', '5', 'I like technology!'), 
('Harry Potter', '4', 'Very beneficial!');

Select * FROM video as v
JOIN reviewers as r
ON r.video_id = v.video_id
