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

INSERT INTO locations (placeName, placeAddress, meetingTimes, createdAt, updatedAt) VALUES ('Starbucks', '1401 Alhambra Blvd. Sacramento, CA' ,'Friday Night', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO locations (placeName, placeAddress, meetingTimes, createdAt, updatedAt) VALUES ('Starbucks', '1401 Alhambra Blvd. Sacramento, CA' ,'Saturday Night', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO locations (placeName, placeAddress, meetingTimes, createdAt, updatedAt) VALUES ('Starbucks', '1401 Alhambra Blvd. Sacramento, CA' ,'Sunday Night', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO locations (placeName, placeAddress, meetingTimes, createdAt, updatedAt) VALUES ('Starbucks', '1020 16th St. Sacramento, CA','Friday Night', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO locations (placeName, placeAddress, meetingTimes, createdAt, updatedAt) VALUES ('Starbucks', '1020 16th St. Sacramento, CA','Saturday Night', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO locations (placeName, placeAddress, meetingTimes, createdAt, updatedAt) VALUES ('Starbucks', '1020 16th St. Sacramento, CA','Sunday Night', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO locations (placeName, placeAddress, meetingTimes, createdAt, updatedAt) VALUES ('Starbucks', '5300 Folsom Blvd. Sacramento, CA','Friday Night', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO locations (placeName, placeAddress, meetingTimes, createdAt, updatedAt) VALUES ('Starbucks', '5300 Folsom Blvd. Sacramento, CA','Saturday Night', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO locations (placeName, placeAddress, meetingTimes, createdAt, updatedAt) VALUES ('Starbucks', '5300 Folsom Blvd. Sacramento, CA','Sunday Night', '2019-04-06 22:18:59', '2019-04-06 22:18:59');

create table promotedBooks
(
	id int NOT NULL AUTO_INCREMENT,
    title varchar(50),
    author varchar(50),
    monthAndYearPromoted date,
    createdAt datetime, 
    updatedAt datetime,
    PRIMARY KEY (id)
);

INSERT INTO promotedBooks (title, author, monthAndYearPromoted, createdAt, updatedAt) VALUES ('Action Bible', 'God', '2019/04/01', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO promotedBooks (title, author, monthAndYearPromoted, createdAt, updatedAt) VALUES ('Kama Sutra for Beginner', 'Joshua Matthew', '2019/04/01', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO promotedBooks (title, author, monthAndYearPromoted, createdAt, updatedAt) VALUES ('Yellow Pages', 'Yellow Pages', '2019/04/01', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO promotedBooks (title, author, monthAndYearPromoted, createdAt, updatedAt) VALUES ('Lord of the Rings', 'J.R.R. Tolkien', '2019/05/01', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO promotedBooks (title, author, monthAndYearPromoted, createdAt, updatedAt) VALUES ('The Wheel of Time', 'Brandon Sanderson', '2019/05/01', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO promotedBooks (title, author, monthAndYearPromoted, createdAt, updatedAt) VALUES ('1984', 'George Orwell', '2019/05/01', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO promotedBooks (title, author, monthAndYearPromoted, createdAt, updatedAt) VALUES ('The Space Trilogy', 'C.S. Lewis', '2019/06/01', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO promotedBooks (title, author, monthAndYearPromoted, createdAt, updatedAt) VALUES ('Enders Game', 'Orson Scott Card', '2019/06/01', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO promotedBooks (title, author, monthAndYearPromoted, createdAt, updatedAt) VALUES ('Brave New World', 'Aldous Huxley', '2019/06/01', '2019-04-06 22:18:59', '2019-04-06 22:18:59');

create table favoriteBooks
(
	id int NOT NULL AUTO_INCREMENT,
	bookId int NOT NULL,
    readerId int NOT NULL,
    createdAt datetime, 
    updatedAt datetime,
    PRIMARY KEY (id)
);

INSERT INTO favoriteBooks (bookId, readerId, createdAt, updatedAt) VALUES ('1', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO favoriteBooks (bookId, readerId, createdAt, updatedAt) VALUES ('10', '7', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO favoriteBooks (bookId, readerId, createdAt, updatedAt) VALUES ('10', '4', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO favoriteBooks (bookId, readerId, createdAt, updatedAt) VALUES ('7', '2', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO favoriteBooks (bookId, readerId, createdAt, updatedAt) VALUES ('1', '6', '2019-04-06 22:18:59', '2019-04-06 22:18:59');

create table bookClubs
(
	id int NOT NULL AUTO_INCREMENT,
	bookId int NOT NULL,
    readerId int NOT NULL,
    locationId int NOT NULL,
    createdAt datetime, 
    updatedAt datetime,
    PRIMARY KEY (id)
);

INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('1', '3', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('1', '2', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('1', '1', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('1', '6', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('10', '7', '2', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('10', '6', '2', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('10', '3', '2', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('7', '8', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('3', '10', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('3', '11', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('3', '15', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('3', '9', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('3', '12', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('3', '4', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('3', '5', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');


SELECT * FROM locations;
SELECT * FROM promotedBooks;
SELECT * FROM favoriteBooks;
SELECT * FROM bookClubs;

SELECT * FROM readers;


-- WRITE SCHEMA FOR JOINING BOOKS WITH USERS