DROP DATABASE IF EXISTS bookClub_db;
CREATE DATABASE bookClub_db;

use bookClub_db;

create table readers
(
	id int NOT NULL AUTO_INCREMENT,
	firstName varchar(50) NOT NULL,
    lastName varchar(50) NOT NULL,
    city varchar(100) NOT NULL,
    stateUS varchar(50) NOT NULL,
    gender varchar(50),
	ageRange varchar(50) NOT NULL,
    bio varchar(500),
    email varchar(100),
    createdAt datetime, 
    updatedAt datetime,
	PRIMARY KEY (id)
);

INSERT INTO readers (firstName, lastName, city, stateUS, gender, ageRange, bio, email, createdAt, updatedAt) VALUES ("Kristal", "Murphy", "Sacramento", "CA", "female", "0", "A short bio.", "iknow@mystuff.com", "2019-04-06 22:18:59", "2019-04-06 22:18:59");
INSERT INTO readers (firstName, lastName, city, stateUS, gender, ageRange, bio, email, createdAt, updatedAt) VALUES ("Tyler", "Niccols", "Sacramento", "CA", "male", "0", "A short bio.", "awesomecoder@youknowthis.com", "2019-04-06 22:18:59", "2019-04-06 22:18:59");
INSERT INTO readers (firstName, lastName, city, stateUS, gender, ageRange, bio, email, createdAt, updatedAt) VALUES ("Vitaliy", "Feytser", "Sacramento", "CA", "male", "0", "A short bio.", "theukrainetrain@muzhik.com", "2019-04-06 22:18:59", "2019-04-06 22:18:59");
INSERT INTO readers (firstName, lastName, city, stateUS, gender, ageRange, bio, email, createdAt, updatedAt) VALUES ("Alex", "Tardif", "Sacramento", "CA", "male", "0", "A short bio.", "myfrontendisbetter@thanyours.com", "2019-04-06 22:18:59", "2019-04-06 22:18:59");
INSERT INTO readers (firstName, lastName, city, stateUS, gender, ageRange, bio, email, createdAt, updatedAt) VALUES ("Patrick", "Thompson", "Sacramento", "CA", "male", "0", "A short bio.", "pt@alongfortheride.com", "2019-04-06 22:18:59", "2019-04-06 22:18:59");
INSERT INTO readers (firstName, lastName, city, stateUS, gender, ageRange, bio, email, createdAt, updatedAt) VALUES ("Captain", "Marvel", "Sacramento", "CA", "female", "0", "A short bio.", "badmamajama@marvel.com", "2019-04-06 22:18:59", "2019-04-06 22:18:59");
INSERT INTO readers (firstName, lastName, city, stateUS, gender, ageRange, bio, email, createdAt, updatedAt) VALUES ("Wonder", "Wonder", "Sacramento", "CA", "female", "0", "A short bio.", "imawonder@dc.com", "2019-04-06 22:18:59", "2019-04-06 22:18:59");
INSERT INTO readers (firstName, lastName, city, stateUS, gender, ageRange, bio, email, createdAt, updatedAt) VALUES ("Billy", "Gruff", "Sacramento", "CA", "male", "0", "A short bio.", "thegoat@gruff.com", "2019-04-06 22:18:59", "2019-04-06 22:18:59");
INSERT INTO readers (firstName, lastName, city, stateUS, gender, ageRange, bio, email, createdAt, updatedAt) VALUES ("Joe", "Bob", "Sacramento", "CA", "male", "0", "A short bio.", "jb@redneck.com", "2019-04-06 22:18:59", "2019-04-06 22:18:59");
INSERT INTO readers (firstName, lastName, city, stateUS, gender, ageRange, bio, email, createdAt, updatedAt) VALUES ("Super", "Man", "Sacramento", "CA", "male", "0", "A short bio.", "imsuper@dc.com", "2019-04-06 22:18:59", "2019-04-06 22:18:59");
INSERT INTO readers (firstName, lastName, city, stateUS, gender, ageRange, bio, email, createdAt, updatedAt) VALUES ("Aunt", "Sally", "Sacramento", "CA", "female", "0", "A short bio.", "icanhelp@withalgebra.com", "2019-04-06 22:18:59", "2019-04-06 22:18:59");
INSERT INTO readers (firstName, lastName, city, stateUS, gender, ageRange, bio, email, createdAt, updatedAt) VALUES ("Bille", "Jean", "Sacramento", "CA", "female", "0", "A short bio.", "bj@notmylover.com", "2019-04-06 22:18:59", "2019-04-06 22:18:59");
INSERT INTO readers (firstName, lastName, city, stateUS, gender, ageRange, bio, email, createdAt, updatedAt) VALUES ("Mark", "Morris", "Sacramento", "CA", "male", "0", "A short bio.", "onehit@wonder.com", "2019-04-06 22:18:59", "2019-04-06 22:18:59");
INSERT INTO readers (firstName, lastName, city, stateUS, gender, ageRange, bio, email, createdAt, updatedAt) VALUES ("Leo", "Qiu", "Sacramento", "CA", "male", "0", "A short bio.", "leo@goesger.com", "2019-04-06 22:18:59", "2019-04-06 22:18:59");
INSERT INTO readers (firstName, lastName, city, stateUS, gender, ageRange, bio, email, createdAt, updatedAt) VALUES ("Mark", "Davis", "Sacramento", "CA", "male", "0", "A short bio.", "thehead@raider.com", "2019-04-06 22:18:59", "2019-04-06 22:18:59");

create table locations
(
	id int NOT NULL AUTO_INCREMENT,
    placeName varchar(50),
    placeAddress varchar(50),
    meetingTimes varchar(50),
    createdAt datetime, 
    updatedAt datetime,
    PRIMARY KEY (id)
);

INSERT INTO locations (placeName, placeAddress, meetingTimes, createdAt, updatedAt) VALUES ('Starbucks-1', '1401 Alhambra Blvd. Sacramento, CA' ,'Friday Night', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO locations (placeName, placeAddress, meetingTimes, createdAt, updatedAt) VALUES ('Starbucks-1', '1401 Alhambra Blvd. Sacramento, CA' ,'Saturday Night', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO locations (placeName, placeAddress, meetingTimes, createdAt, updatedAt) VALUES ('Starbucks-1', '1401 Alhambra Blvd. Sacramento, CA' ,'Sunday Night', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO locations (placeName, placeAddress, meetingTimes, createdAt, updatedAt) VALUES ('Starbucks-2', '1020 16th St. Sacramento, CA','Friday Night', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO locations (placeName, placeAddress, meetingTimes, createdAt, updatedAt) VALUES ('Starbucks-2', '1020 16th St. Sacramento, CA','Saturday Night', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO locations (placeName, placeAddress, meetingTimes, createdAt, updatedAt) VALUES ('Starbucks-2', '1020 16th St. Sacramento, CA','Sunday Night', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO locations (placeName, placeAddress, meetingTimes, createdAt, updatedAt) VALUES ('Starbucks-3', '5300 Folsom Blvd. Sacramento, CA','Friday Night', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO locations (placeName, placeAddress, meetingTimes, createdAt, updatedAt) VALUES ('Starbucks-3', '5300 Folsom Blvd. Sacramento, CA','Saturday Night', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO locations (placeName, placeAddress, meetingTimes, createdAt, updatedAt) VALUES ('Starbucks-3', '5300 Folsom Blvd. Sacramento, CA','Sunday Night', '2019-04-06 22:18:59', '2019-04-06 22:18:59');

create table promotedBooks
(
	id int NOT NULL AUTO_INCREMENT,
    title varchar(50),
    author varchar(150),
    caption varchar(2500),
    coverImage varchar(2500),
    monthAndYearPromoted varchar(50),
    createdAt datetime, 
    updatedAt datetime,
    PRIMARY KEY (id)
);

INSERT INTO promotedBooks (title, author, caption, coverImage, monthAndYearPromoted, createdAt, updatedAt) VALUES ('The Action Bible', 'God', 'Finally! From the authors who brought you the "HOLY BIBLE", "SANTA CLAUSE & RUDOLPH", "GHOSTS ARE REAL, NO - I AM SERIOUS!" comes a story of the Bible Heroes and Devotion! Lets meet up and together color Moses with your favorite set of crayons!', './images/hb.jpeg', '04-2019', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO promotedBooks (title, author, caption, coverImage, monthAndYearPromoted, createdAt, updatedAt) VALUES ('Kama Sutra for Beginners', 'Joshua Matthew', 'Will you just look at the cover page? Does it not make you want to read this book again and again and again? Yes, we feel the same way! Lets meet up and read it together: bring your kids, your grandkids, even your neighbor - KAMA SUTRA is for everyone!', './images/ks.jpeg', '04-2019', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO promotedBooks (title, author, caption, coverImage, monthAndYearPromoted, createdAt, updatedAt) VALUES ('Yellow Pages', 'Yellow Pages', 'This book is not for the light of heart... The New Yorker calls it "Riveting!!!", The Guardian says "If theres one book you read your entire life... this is the one!". Lets meet up and flip from page to page together in search for the meaning of life and winning lottery numbers.', './images/yp.jpeg', '04-2019', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO promotedBooks (title, author, caption, coverImage, monthAndYearPromoted, createdAt, updatedAt) VALUES ('Lord of the Rings', 'J.R.R. Tolkien', 'Staff promo caption goes here.', './images/cover-placeholder.jpg', '05-2019', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO promotedBooks (title, author, caption, coverImage, monthAndYearPromoted, createdAt, updatedAt) VALUES ('The Wheel of Time', 'Brandon Sanderson', 'Staff promo caption goes here.', './images/cover-placeholder.jpg', '05-2019', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO promotedBooks (title, author, caption, coverImage, monthAndYearPromoted, createdAt, updatedAt) VALUES ('1984', 'George Orwell', 'Staff promo caption goes here.', './images/cover-placeholder.jpg', '05-2019', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO promotedBooks (title, author, caption, coverImage, monthAndYearPromoted, createdAt, updatedAt) VALUES ('The Space Trilogy', 'C.S. Lewis', 'Staff promo caption goes here.', './images/cover-placeholder.jpg', '06-2019', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO promotedBooks (title, author, caption, coverImage, monthAndYearPromoted, createdAt, updatedAt) VALUES ('Enders Game', 'Orson Scott Card', 'Staff promo caption goes here.', './images/cover-placeholder.jpg', '06-2019', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO promotedBooks (title, author, caption, coverImage, monthAndYearPromoted, createdAt, updatedAt) VALUES ('Brave New World', 'Aldous Huxley', 'Staff promo caption goes here.', './images/cover-placeholder.jpg', '06-2019', '2019-04-06 22:18:59', '2019-04-06 22:18:59');

create table favoriteBooks
(
	id int NOT NULL AUTO_INCREMENT,
	promotedBookId int NOT NULL,
    readerId int NOT NULL,
    createdAt datetime, 
    updatedAt datetime,
    PRIMARY KEY (id)
);

INSERT INTO favoriteBooks (promotedBookId, readerId, createdAt, updatedAt) VALUES ('1', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO favoriteBooks (promotedBookId, readerId, createdAt, updatedAt) VALUES ('2', '7', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO favoriteBooks (promotedBookId, readerId, createdAt, updatedAt) VALUES ('10', '4', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO favoriteBooks (promotedBookId, readerId, createdAt, updatedAt) VALUES ('7', '2', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO favoriteBooks (promotedBookId, readerId, createdAt, updatedAt) VALUES ('1', '6', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO favoriteBooks (promotedBookId, readerId, createdAt, updatedAt) VALUES ('3', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO favoriteBooks (promotedBookId, readerId, createdAt, updatedAt) VALUES ('2', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO favoriteBooks (promotedBookId, readerId, createdAt, updatedAt) VALUES ('4', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO favoriteBooks (promotedBookId, readerId, createdAt, updatedAt) VALUES ('5', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO favoriteBooks (promotedBookId, readerId, createdAt, updatedAt) VALUES ('6', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');

create table bookClubs
(
	id int NOT NULL AUTO_INCREMENT,
	promotedBookId int NOT NULL,
    readerId int NOT NULL,
    locationId int NOT NULL,
    createdAt datetime, 
    updatedAt datetime,
    PRIMARY KEY (id)
);

INSERT INTO bookClubs (promotedBookId, readerId, locationId, createdAt, updatedAt) VALUES ('1', '3', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (promotedBookId, readerId, locationId, createdAt, updatedAt) VALUES ('1', '2', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (promotedBookId, readerId, locationId, createdAt, updatedAt) VALUES ('1', '1', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (promotedBookId, readerId, locationId, createdAt, updatedAt) VALUES ('1', '6', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (promotedBookId, readerId, locationId, createdAt, updatedAt) VALUES ('2', '7', '2', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (promotedBookId, readerId, locationId, createdAt, updatedAt) VALUES ('2', '6', '2', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (promotedBookId, readerId, locationId, createdAt, updatedAt) VALUES ('2', '3', '2', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (promotedBookId, readerId, locationId, createdAt, updatedAt) VALUES ('2', '8', '2', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (promotedBookId, readerId, locationId, createdAt, updatedAt) VALUES ('2', '10', '2', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (promotedBookId, readerId, locationId, createdAt, updatedAt) VALUES ('3', '11', '1', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (promotedBookId, readerId, locationId, createdAt, updatedAt) VALUES ('3', '15', '1', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (promotedBookId, readerId, locationId, createdAt, updatedAt) VALUES ('3', '9', '1', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (promotedBookId, readerId, locationId, createdAt, updatedAt) VALUES ('3', '12', '1', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (promotedBookId, readerId, locationId, createdAt, updatedAt) VALUES ('3', '4', '1', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (promotedBookId, readerId, locationId, createdAt, updatedAt) VALUES ('3', '5', '1', '2019-04-06 22:18:59', '2019-04-06 22:18:59');


SELECT * FROM locations;
SELECT * FROM promotedBooks;
SELECT * FROM favoriteBooks;
SELECT * FROM bookClubs;

SELECT * FROM readers;


-- WRITE SCHEMA FOR JOINING BOOKS WITH USERS